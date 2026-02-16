# Conformance Test Suite for UTxORPC

## Problem Statement

UTxORPC is a multi-chain gRPC specification providing a unified interface for UTXO-based blockchains. To ensure interoperability across different implementations (node adapters, indexers, wallets, dApps) and language bindings, we need a comprehensive conformance test suite.

Without conformance tests, implementations may diverge in subtle ways that break interoperability:
- Wallets fail when switching between backend providers
- Incorrect transaction construction due to encoding differences
- Data inconsistencies across indexers
- Chain-specific behaviors that violate abstraction

## Objectives

Create a language-agnostic conformance test suite that:

1. **Validates Serialization Consistency**: Ensures all implementations encode/decode data identically
2. **Tests API Behavior**: Verifies server implementations behave consistently
3. **Ensures Chain Fidelity**: Validates parsed data matches on-chain representation
4. **Covers Edge Cases**: Tests boundary conditions and error handling
5. **Supports Regression Testing**: Catches breaking changes

## Scope of Testing

### 1. Data Encoding and Representation

#### 1.1 Cryptographic Primitives
**Hash Verification:**
UTxORPC provides hashes from the blockchain (transaction hashes, block hashes, datum hashes, script hashes). Conformance tests verify:
- Hash fields match on-chain values
- When both hash and content are provided, they're consistent
- Correct algorithm understood per chain (Blake2b-256 for Cardano, SHA-256 for Bitcoin)

**Signatures and Keys:**
- Consistent key format interpretation (Ed25519 for Cardano)
- Signature verification compatibility
- VRF key and proof representation

**Test Requirements:**
- All implementations interpret hash values identically
- Hash-to-content relationships verified correctly
- Signatures from chain data verify successfully

#### 1.2 Address Encoding
**Cardano Addresses:**
- Binary address structure (network tag, payment credential, delegation credential)
- Network discrimination (mainnet, testnet, staging)
- Address type handling (base, enterprise, pointer, reward, Byron)
- Credential extraction for pattern matching
- Bech32 human-readable representation

**Bitcoin Addresses:**
- Various output types (P2PKH, P2SH, P2WPKH, P2WSH, P2TR)
- Network discrimination
- Base58Check and Bech32 formats
- Script address derivation

**Test Requirements:**
- Address parsing produces identical credential interpretation
- Pattern matching evaluates consistently
- Round-trip encoding/decoding preserves semantics

#### 1.3 CBOR Decoding (Cardano)
**Parse Consistency:**
UTxORPC implementations decode CBOR data from the blockchain. The canonical encoding is the chain's responsibility, but implementations must parse it consistently:
- Parse CBOR bytes into identical protobuf structures
- Handle all valid CBOR constructs (definite/indefinite lengths, compact/general tags)
- Interpret Plutus data tags correctly (0-6 compact, 121-127 alternative, 1280-1400 general)
- Map key ordering preserved as encountered

**Byte Preservation:**
- Original chain bytes stored exactly in `original_cbor` and `native_bytes` fields
- No transformation or normalization of source bytes
- Byte-identical storage across implementations

**Hash Verification:**
- Parsed structures yield hashes matching on-chain values
- Proves correct interpretation of CBOR data

**Test Requirements:**
- Given identical CBOR input, all implementations produce identical protobuf output
- Original bytes can be retrieved exactly as stored
- All hashes match on-chain reference values

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

**ExUnits:**
- Steps (uint64) and memory (uint64) for execution budgets
- Used in redeemers and evaluation results
- Arithmetic consistency for cost calculations

**Test Requirements:**
- All implementations parse numeric types into identical values
- No precision loss or unexpected overflow
- Values match on-chain representation

#### 1.5 Script Interpretation
**Plutus Scripts:**
- Version detection (V1, V2, V3) from CBOR structure
- Parse CBOR-encoded script bytes consistently
- Script hash provided by chain matches script content

**Native Scripts:**
- Parse script structure (timelock, signature requirements)
- Handle nested compositions (all, any, k-of-n)
- Consistent interpretation across implementations

**Test Requirements:**
- All implementations parse script bytes into identical structures
- Version detection agrees across implementations
- Script semantics interpreted consistently

### 2. Service API Semantics

#### 2.1 SyncService
**FetchBlock:**
- Batch request handling
- Non-existent block error handling
- Duplicate reference deduplication

**DumpHistory:**
- Pagination with start_token and next_token
- Consistency across paginated requests
- Starting point handling

**FollowTip:**
- Intersect algorithm (finding common ancestor)
- Apply/undo/reset action sequencing
- Chain reorganization handling
- No missed or duplicated blocks

**ReadTip:**
- Current tip reporting

**Test Requirements:**
- Intersect finds correct common point
- Reorganizations produce correct undo sequence
- Stream remains consistent across forks

#### 2.2 QueryService
**ReadUtxos:**
- Batch lookup by TxoRef
- Missing UTxO handling
- Ledger tip consistency

**SearchUtxos:**
- UtxoPredicate evaluation (match, not, all_of, any_of)
- Pattern matching semantics (address, asset, output patterns)
- Nested predicate evaluation
- Pagination with tokens
- Result ordering consistency

**ReadData:**
- Datum lookup by hash
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
- Concurrent queries see consistent ledger state
- Era transitions handled correctly

#### 2.3 SubmitService
**SubmitTx:**
Clients provide pre-encoded transaction bytes:
- Validation consistency across implementations
- Duplicate transaction handling
- Error reporting format

**EvalTx:**
Server evaluates scripts without submission:
- Execution budget calculation (ExUnits)
- Unit costs and fees
- Consistent evaluation results

**WaitForTx:**
Stream transaction lifecycle stages:
- Stage progression (STAGE_ACKNOWLEDGED → STAGE_MEMPOOL → STAGE_NETWORK → STAGE_CONFIRMED)
- Stage transition timing
- Streaming behavior

**ReadMempool:**
- Snapshot consistency
- Complete mempool view at point in time

**WatchMempool:**
- Real-time update delivery
- TxPredicate filtering
- No missed transactions

**Test Requirements:**
- EvalTx produces consistent execution units
- Stage progression is logical
- No missed transactions in watch streams
- Rejected transactions report consistent errors

#### 2.4 WatchService
**WatchTx:**
- TxPredicate filtering semantics
- Apply/undo actions during reorganizations
- Intersect handling
- Long-running stream stability

**Test Requirements:**
- No missed or duplicate transactions
- Reorganizations produce correct undo sequence
- Resource cleanup on disconnect

### 3. Cross-Chain Abstractions

#### 3.1 Chain Polymorphism
**Type Discrimination:**
- Correct chain detection from messages
- Proper variant selection in oneofs
- Unknown chain handling

**Native Bytes Consistency:**
- Native bytes match chain-specific serialization
- Round-trip through native bytes preserves semantics
- Parsed representation consistent with native bytes

**Test Requirements:**
- Chain-specific data correctly routed
- Native bytes can reconstruct exact on-chain data
- Cross-chain fields (slot, height, hash) interpreted consistently

#### 3.2 google.protobuf.FieldMask
**Partial Field Selection:**
Multiple RPCs accept FieldMask for partial responses:
- Nested field path handling
- Wildcard support
- Invalid path error handling
- Response contains only requested fields

**Test Requirements:**
- FieldMask works consistently across all supporting RPCs
- Partial responses are valid messages
- Masked fields truly omitted (not just zeroed)

### 4. Data Integrity and Chain Fidelity

#### 4.1 On-Chain Validation
**Transaction Validation:**
- Transaction hashes match on-chain values
- Input references resolve correctly
- Witness data parses correctly
- Signature verification succeeds

**Block Validation:**
- Block hashes match on-chain values
- Transaction list completeness
- Timestamp and height consistency
- All fields match chain data

**Test Requirements:**
- Parsed data matches mainnet/testnet reference values
- Real chain data parses without errors
- Original bytes preserved exactly

#### 4.2 Cross-Field Consistency
**Referential Integrity:**
- Hash and content pairs are consistent (datum hash ↔ datum payload)
- References point to valid data
- Indices within valid ranges
- Quantities sum correctly

**Test Requirements:**
- When both hash and content provided, they correspond correctly
- Transaction output can be resolved from reference
- Redeemer indices reference valid inputs/outputs/certificates
- Collateral sums correctly

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
- Negative unsigned values

#### 5.3 Forward Compatibility
- Unknown fields preserved
- Unknown enum values handled gracefully
- New variant types ignored appropriately
- API version negotiation

**Test Requirements:**
- Implementations handle edge cases consistently
- Errors are reported consistently
- Invalid data rejected uniformly
- Future compatibility maintained

## Success Criteria

1. **Coverage**: Test vectors cover all critical encoding and API operations
2. **Consistency**: All implementations pass identical tests
3. **Fidelity**: All on-chain data validates correctly
4. **Automation**: Tests run automatically in CI
5. **Documentation**: Clear specification of encoding decisions
6. **Extensibility**: Easy to add tests as spec evolves

