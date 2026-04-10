# Conformance Test Suite for UTxORPC

## Problem Statement

UTxORPC is a multi-chain gRPC specification providing a unified interface for UTXO-based blockchains.
To ensure interoperability across different implementations (node adapters, indexers, wallets, dApps) and language bindings, we need a comprehensive conformance test suite.

Without conformance tests, implementations may diverge in subtle ways that break interoperability:
- Wallets fail when switching between backend providers
- Incorrect transaction construction due to encoding differences
- Data inconsistencies across indexers
- Chain-specific behaviours that violate abstraction

This specification targets the **v1beta** proto definitions.

## Objectives

Create a language-agnostic conformance test suite that:

1. **Validates Serialisation Consistency**: Ensures all implementations encode/decode data identically
2. **Tests API Behaviour**: Verifies server implementations behave consistently
3. **Ensures Chain Fidelity**: Validates parsed data matches on-chain representation
4. **Covers Edge Cases**: Tests boundary conditions and error handling
5. **Supports Regression Testing**: Catches breaking changes

## Part 1: Chain-Agnostic Specification

### 1. Data Encoding and Representation

#### 1.1 Cryptographic Primitives
**Hash Verification:**
UTxORPC provides hashes from the blockchain (transaction hashes, block hashes, datum hashes, script hashes).
Hash bytes are copied verbatim from chain data into protobuf fields -- there is no interpretation step.
Correct extraction is already covered by the native byte preservation requirements (section 1.3).
Hash-to-content consistency (where a message carries both a hash and the content it covers) is chain-specific and covered in the appendices.

#### 1.2 Address Encoding
UTxORPC carries addresses as opaque bytes with chain-specific semantics.
Conformance tests verify:
- Address parsing produces identical credential interpretation
- Pattern matching (`AddressPattern`) evaluates consistently across implementations
- Round-trip encoding/decoding preserves semantics
- Network discrimination handled correctly

Chain-specific address formats and rules are defined in the appendices.

#### 1.3 Native Byte Preservation
Implementations decode chain-native bytes into protobuf structures.
The canonical encoding is the chain's responsibility, but implementations must parse it consistently:
- Given identical native input, all implementations produce identical protobuf output
- Original chain bytes stored exactly in `native_bytes` fields (chain-specific fields like Cardano's `original_cbor` are covered in the appendices)
- No transformation or normalisation of source bytes
- Byte-identical storage across implementations

Chain-specific encoding rules (e.g. CBOR for Cardano) are defined in the appendices.

#### 1.4 Numeric Representation
**BigInt:**
- Handles values beyond int64 range using byte representation
- Oneofs: `int` (int64), `big_u_int` (bytes), `big_n_int` (bytes)
- Sign representation and byte order for large values
- Used for coin quantities, including negative values in minting

**RationalNumber:**
- Numerator (int32) and denominator (uint32) representation
- Precision preservation in fractions
- Used in protocol parameters, pool margins, voting thresholds

**Test Requirements:**
- All implementations parse numeric types into identical values
- No precision loss or unexpected overflow
- Values match on-chain representation

Note: `ExUnits` and script types are chain-specific (Cardano only); see Appendix A.

### 2. Service API Semantics

#### 2.1 SyncService
**FetchBlock:**
- Batch request handling (repeated BlockRef)
- Non-existent block error handling

**DumpHistory:**
- Pagination via `BlockRef` (start_token and next_token are structured block references, not opaque cursors)
- Consistency across paginated requests
- Starting point handling

**FollowTip:**
- Intersect algorithm (finding common ancestor)
- Apply/undo/reset action sequencing
- Chain reorganisation handling
- No missed or duplicated blocks

**ReadTip:**
- Current tip reporting
- Consistency with FollowTip: a ReadTip call concurrent with an active FollowTip stream should return a tip no older than the most recent FollowTip action

**Test Requirements:**
- Intersect finds correct common point
- Reorganisations produce correct undo sequence
- Stream remains consistent across forks

#### 2.2 QueryService
**ReadUtxos:**
- Batch lookup by TxoRef
- Missing UTxO handling
- Ledger tip consistency

**SearchUtxos:**
- UtxoPredicate evaluation (match, not, all_of, any_of)
  - `match`: true if the UTxO exhibits the pattern
  - `not`: a repeated field; the predicate is true if **none** of the sub-predicates are true (i.e. conjunction of negations)
  - `all_of`: true if **all** sub-predicates are true
  - `any_of`: true if **at least one** sub-predicate is true
- Pattern matching semantics (address, asset, output patterns)
- Nested predicate evaluation
- Pagination with opaque string tokens (start_token/next_token)
- Pagination exhaustiveness: the union of all pages must equal the complete result set (no gaps, no duplicates, assuming no ledger state change between pages)
- Result ordering consistency

**ReadData:**
- Datum lookup by key (`repeated bytes keys`; in Cardano, these are datum hashes)
- Missing datum handling

**ReadTx:**
- Transaction lookup by hash

**ReadParams:**
- Current protocol parameters at ledger tip

**ReadGenesis:**
- Genesis configuration parsing
- CAIP-2 network identifier format

**ReadEraSummary:**
- Era-specific parameter handling
- Era boundaries and transitions

**Test Requirements:**
- Predicate logic evaluates identically
- Pagination maintains consistency
- Each response includes a ledger_tip reflecting the point at which data was read
- Era transitions handled correctly

#### 2.3 SubmitService
**SubmitTx:**
Clients provide pre-encoded transaction bytes:
- Validation consistency across implementations
- Duplicate transaction handling
- Error reporting format

**EvalTx:**
Server evaluates scripts without submission:
- Execution budget calculation (ExUnits per redeemer)
- Fee estimation (TxEval.fee)
- Error and trace reporting (TxEval.errors, TxEval.traces)
- Per-redeemer execution budgets (TxEval.redeemers)
- Consistent evaluation results

**WaitForTx:**
Stream transaction lifecycle stages:
- Stage enum values: STAGE_UNSPECIFIED, STAGE_ACKNOWLEDGED, STAGE_MEMPOOL, STAGE_NETWORK, STAGE_CONFIRMED
- The spec does not mandate a strict linear progression -- implementations may skip stages
- Rejection behaviour: the `Stage` enum has no rejection value; when a transaction is rejected, implementations must terminate the stream with an appropriate gRPC status error (e.g. `FAILED_PRECONDITION` or `INVALID_ARGUMENT`) rather than sending `STAGE_UNSPECIFIED`
- Streaming behaviour

**ReadMempool:**
- Snapshot consistency
- Complete mempool view at point in time

**WatchMempool:**
- Real-time update delivery
- TxPredicate filtering
- No missed transactions

**Test Requirements:**
- EvalTx produces consistent execution units and fees
- Stage values are valid enum members
- No missed transactions in watch streams
- Rejected transactions report consistent gRPC status errors

#### 2.4 WatchService
**WatchTx:**
- TxPredicate filtering semantics
- Apply/undo/idle action semantics (idle signals no-match for a block, enabling progress tracking)
- Intersect handling
- Long-running stream stability

**Test Requirements:**
- No missed or duplicate transactions
- Reorganisations produce correct undo sequence
- Idle signals delivered for blocks with no matching transactions

### 3. Cross-Chain Abstractions

#### 3.1 Chain Polymorphism
**Type Discrimination:**
- Correct chain variant selection in oneofs (e.g. `AnyChainBlock.cardano`)
- Unrecognised oneof variants leave the field unset (standard protobuf forward compatibility, also covered in section 5.3)

**Native Bytes Consistency:**
- `native_bytes` field matches the chain-specific serialisation
- Parsed protobuf representation is consistent with `native_bytes`

**Test Requirements:**
- Chain-specific data correctly routed to the right oneof variant
- `native_bytes` can reconstruct exact on-chain data

#### 3.2 google.protobuf.FieldMask
**Partial Field Selection:**

The following RPCs accept FieldMask for partial responses:
FetchBlock, DumpHistory, FollowTip, ReadParams, ReadGenesis, ReadEraSummary, ReadUtxos, SearchUtxos, ReadData, ReadTx, WatchMempool, WatchTx.

The following RPCs do **not** accept FieldMask:
ReadTip, ReadMempool, SubmitTx, EvalTx, WaitForTx.

- Dot-delimited field path handling (standard google.protobuf.FieldMask semantics, no wildcards)
- Response contains only requested fields (for message-typed fields; proto3 scalars have no wire-level distinction between absent and zero-valued)

**Test Requirements:**
- FieldMask works consistently across all supporting RPCs
- Partial responses are valid messages

#### 3.3 Cross-Service Message Shape Divergences
The same logical concept has different message definitions across services.
Conformance tests must verify that implementations handle each shape correctly:

**Block reference:**
- `sync.BlockRef` and `query.ChainPoint` include a `timestamp` field
- `watch.BlockRef` does **not** include `timestamp`

**Chain transaction envelope:**
- `query.AnyChainTx` carries `native_bytes`, a parsed `chain` oneof, and a `block_ref`
- `watch.AnyChainTx` carries a parsed `chain` oneof and a full `AnyChainBlock block`, but no `native_bytes`
- `submit.AnyChainTx` carries only raw bytes (`oneof type { bytes raw = 1; }`) with no parsed representation

**Test Requirements:**
- Implementations populate all fields defined for each service's message shape
- Missing fields in narrower shapes (e.g. no `native_bytes` in `watch.AnyChainTx`) are not treated as errors


### 4. Data Integrity and Chain Fidelity

#### 4.1 On-Chain Validation
Using real mainnet/testnet data as test vectors:
- Input references resolve correctly
- Witness data parses into valid protobuf structures
- Transaction list within a block is complete
- Timestamp and height fields are consistent

**Test Requirements:**
- Real chain data parses without errors
- Parsed output matches reference test vectors
- Native byte preservation holds (as per section 1.3)
- Hash-to-content consistency holds where applicable (see Appendix A.3 for Cardano)

#### 4.2 Cross-Field Consistency
**Referential Integrity:**
- References point to valid data
- Indices within valid ranges

**Test Requirements:**
- Transaction output can be resolved from its TxoRef

Note: redeemer index validity, collateral sums, and hash-to-content consistency are chain-specific; see Appendix A.

### 5. Edge Cases and Error Handling

#### 5.1 Boundary Conditions
- Empty collections vs unset fields
- Maximum field values (uint64 max)
- Deeply nested structures (recursion limits)
- Very large collections
- Zero values and special cases

#### 5.2 Invalid Inputs
- Malformed messages
- Invalid hash lengths
- Invalid addresses
- Mismatched hashes and content
- Out-of-range values

#### 5.3 Forward Compatibility
- Unknown fields preserved (standard protobuf behaviour)
- Unknown enum values handled gracefully
- New oneof variants ignored appropriately

**Test Requirements:**
- Implementations handle edge cases consistently
- Errors are reported consistently
- Invalid data rejected uniformly
- Future compatibility maintained

## Part 2: Chain-Specific Appendices

### Appendix A: Cardano

#### A.1 Cryptographic Primitives
- Hash algorithm: Blake2b-256
- Key type: Ed25519
- VRF key hashes carried as raw bytes (`vrf_keyhash` in `PoolRegistrationCert`, `GenesisKeyDelegationCert`); VRF proofs are not modelled in the proto

#### A.2 Address Encoding
- Binary address structure (network tag, payment credential, delegation credential)
- Network discrimination (mainnet tag 1, testnet tag 0)
- Address type handling (base, enterprise, pointer, reward, Byron)
- Credential extraction for pattern matching
- Bech32 human-readable representation

#### A.3 CBOR Decoding
**Parse Consistency:**
Implementations decode CBOR data from the Cardano blockchain:
- Parse CBOR bytes into identical protobuf structures
- Handle all valid CBOR constructs (definite/indefinite lengths, compact/general tags)
- Interpret Plutus data constructor tags correctly (CBOR tags 121-127 for constructors 0-6, tags 1280-1400 for constructors 7-127, tag 102 for general encoding of constructors 128+)
- `Constr` message field usage: `tag` holds the compact CBOR tag value (121-127, 1280-1400); `any_constructor` holds the logical constructor index when the general encoding (tag 102) is used.
  Implementations must populate the correct field based on the CBOR encoding encountered.
- Map key ordering preserved as encountered

**Byte Preservation:**
- Original chain bytes stored exactly in `original_cbor` and `native_bytes` fields
- No transformation or normalisation of source bytes
- Byte-identical storage across implementations

**Hash-to-Content Consistency:**
Messages that carry both a hash and the content it covers:
- `Datum`: Blake2b-256 of `original_cbor` must equal `hash`; parsing `original_cbor` must yield `payload`
- `Tx`: Blake2b-256 of the serialised transaction body must equal `hash`
- `Block`: Blake2b-256 of the serialised block header must equal `BlockHeader.hash`
- `Redeemer`: parsing `original_cbor` must yield `payload` (no hash field, but bytes-to-parsed consistency)

**Test Requirements:**
- Given identical CBOR input, all implementations produce identical protobuf output
- Original bytes can be retrieved exactly as stored
- All hashes match on-chain reference values

#### A.4 Script Types
**Plutus Scripts:**
- Version detection (V1, V2, V3, V4) from CBOR structure
- Parse CBOR-encoded script bytes consistently
- Script hash provided by chain matches script content

**Native Scripts:**
- Parse script structure (timelock, signature requirements)
- Handle nested compositions (all, any, k-of-n)
- Consistent interpretation across implementations

#### A.5 Certificate Types
Cardano defines 19 certificate variants (including Conway-era governance certificates).
Conformance tests must verify:
- All certificate types parse correctly from on-chain data
- Redeemer attachment on certificates is handled consistently
- `CertificatePattern` matching evaluates correctly for all variants

#### A.6 Governance (Conway Era)
- `GovernanceActionProposal` parsing (deposit, reward account, action, anchor)
- All `GovernanceAction` variants: parameter change, hard fork initiation, treasury withdrawal, no confidence, committee update, new constitution, info action
- `DRep` representation (key hash, script hash, abstain, no confidence)
- `Vote` enum mapping: the proto enum is offset by 1 from the on-chain CBOR encoding due to `VOTE_UNSPECIFIED = 0`:
  | On-chain CBOR | Proto enum value | Proto enum name  |
  |---------------|------------------|------------------|
  | 0 (No)        | 1                | VOTE_NO          |
  | 1 (Yes)       | 2                | VOTE_YES         |
  | 2 (Abstain)   | 3                | VOTE_ABSTAIN     |
  Conformance tests must verify that implementations apply this offset correctly.
- Voting thresholds: `Genesis` uses named-field messages (`PoolVotingThresholds`, `DRepVotingThresholds`), while `PParams` uses generic `VotingThresholds` (`repeated RationalNumber`).
  Conformance tests must cover both representations.

#### A.7 Genesis Configuration
Note: `Genesis` uses `CostModelMap` for cost models while `PParams` uses `CostModels` -- these are structurally identical but separate message types.
Conformance tests must cover both.
- Byron-era fields (AVVM distribution, block version data, protocol consts, heavy delegation, VSS certs)
- Shelley-era fields (active slots coefficient, epoch length, gen delegs, network params)
- Alonzo-era fields (lovelace per UTxO word, execution prices, cost models)
- Conway-era fields (committee, constitution, DRep parameters, governance action parameters)

#### A.8 Era Summaries
- `EraSummary` boundaries (time, slot, epoch)
- Era-specific protocol parameter snapshots
- Era transition correctness

#### A.9 Transaction Metadata and Auxiliary Data
- `AuxData` contains metadata (label-value pairs) and auxiliary scripts
- `Metadatum` is a recursive type: int (int64), bytes, text, array, map
- `MetadatumMap` key ordering preserved as encountered (same principle as PlutusData maps)
- Conformance tests must verify correct parsing of all `Metadatum` variants from on-chain CBOR
- Label values (uint64) must match on-chain metadata labels exactly

#### A.10 Bootstrap Witnesses (Byron Era)
- `BootstrapWitness` (vkey, signature, chain_code, attributes) appears in `WitnessSet.bootstrapWitnesses`
- Byron-era transactions use bootstrap witnesses instead of VKey witnesses
- Conformance tests must verify correct parsing of chain_code (32 bytes) and attributes fields

#### A.11 Reference Inputs and Collateral
**Reference Inputs (Babbage era):**
- `Tx.reference_inputs` (field 6) are inputs read but not consumed
- `TxInput.as_output` must be correctly populated for reference inputs

**Collateral (Alonzo era):**
- `Collateral.collateral_return`: the output returned to the transaction submitter on script failure
- `Collateral.total_collateral`: the total collateral amount claimed on script failure
- Both fields must be correctly parsed when present

#### A.12 Validity Interval and Transaction Success
**Validity Interval:**
- `TxValidity.start` is only present from Allegra era onwards; absent in earlier eras
- `TxValidity.ttl` may be absent for transactions with no upper bound

**Transaction Success Flag:**
- `Tx.successful` (field 11) indicates whether Phase-2 script validation passed
- When `false`, collateral is consumed and transaction outputs are not created
- Conformance tests must verify this flag is correctly set for both successful and failed Plutus transactions

### Appendix B: Bitcoin

Note: the current `bitcoin.proto` is minimal.
Conformance tests are limited to what the proto actually models.

#### B.1 Cryptographic Primitives
- Hash algorithm: SHA-256 (double-SHA-256 for txid/block hash)
- `Transaction.hash` is copied from source data; `bitcoin.proto` has no `native_bytes` field, so in-message hash-to-content verification is not possible

#### B.2 Transaction Parsing
- TxInput fields: txid, scriptSig, sequence, coinbase, txinwitness (all raw bytes)
- TxOutput fields: value (uint64 satoshis), ScriptPubKey (asm, hex, type, optional address)
- `ScriptPubKey.asm` and `ScriptPubKey.type` are typed as `bytes` in the proto despite representing human-readable values; conformance tests should verify the expected encoding (UTF-8)
- Coinbase detection: `coinbase` field set instead of `txid`/`scriptSig`
- SegWit witness data preserved in `txinwitness`

#### B.3 Block Parsing
- Block header fields: version, previousblockhash, merkleroot, time, bits, nonce
- Transaction list completeness
- `Transaction.time` is `uint32` (Unix seconds), subject to Y2038 overflow; conformance tests should verify correct handling up to the maximum representable value

### Appendix C: Handshake

Note: `handshake.proto` is present in v1beta only.
Conformance tests are limited to what the proto models.

#### C.1 Covenant System
- `CovenantAction` enum (11 variants): CLAIM, OPEN, BID, REVEAL, REDEEM, REGISTER, UPDATE, RENEW, TRANSFER, FINALIZE, REVOKE
- `Covenant` message carries the action, name hash, name, value, height, and renewal/transfer/bidder/record data
- Conformance tests must verify correct mapping from on-chain covenant data to the enum and message fields

#### C.2 Transaction Parsing
- `TxInput` fields: txid, scriptSig, sequence, coinbase, txinwitness (same structure as Bitcoin)
- `TxOutput` fields: value (uint64), ScriptPubKey (asm, hex, type, optional address), optional Covenant
- Coinbase detection follows the same pattern as Bitcoin

#### C.3 Block Parsing
- Block header fields: version, previousblockhash, merkleroot, time, bits, nonce, extraNonce, mask, reservedRoot, witnessRoot, treeRoot
- Handshake blocks carry additional Merkle roots (tree, witness, reserved) compared to Bitcoin
- Transaction list completeness

## Success Criteria

1. **Coverage**: Test vectors cover all critical encoding and API operations
2. **Consistency**: All implementations pass identical tests
3. **Fidelity**: All on-chain data validates correctly
4. **Automation**: Tests run automatically in CI
5. **Documentation**: Clear specification of encoding decisions
6. **Extensibility**: Easy to add tests as spec evolves
