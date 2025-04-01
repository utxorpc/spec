# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/v1alpha/cardano/cardano.proto](#utxorpc_v1alpha_cardano_cardano-proto)
    - [AddressPattern](#utxorpc-v1alpha-cardano-AddressPattern)
    - [Anchor](#utxorpc-v1alpha-cardano-Anchor)
    - [Asset](#utxorpc-v1alpha-cardano-Asset)
    - [AssetPattern](#utxorpc-v1alpha-cardano-AssetPattern)
    - [AuthCommitteeHotCert](#utxorpc-v1alpha-cardano-AuthCommitteeHotCert)
    - [AuxData](#utxorpc-v1alpha-cardano-AuxData)
    - [BigInt](#utxorpc-v1alpha-cardano-BigInt)
    - [Block](#utxorpc-v1alpha-cardano-Block)
    - [BlockBody](#utxorpc-v1alpha-cardano-BlockBody)
    - [BlockHeader](#utxorpc-v1alpha-cardano-BlockHeader)
    - [Certificate](#utxorpc-v1alpha-cardano-Certificate)
    - [Collateral](#utxorpc-v1alpha-cardano-Collateral)
    - [Constitution](#utxorpc-v1alpha-cardano-Constitution)
    - [Constr](#utxorpc-v1alpha-cardano-Constr)
    - [CostModel](#utxorpc-v1alpha-cardano-CostModel)
    - [CostModels](#utxorpc-v1alpha-cardano-CostModels)
    - [DRep](#utxorpc-v1alpha-cardano-DRep)
    - [Datum](#utxorpc-v1alpha-cardano-Datum)
    - [EraBoundary](#utxorpc-v1alpha-cardano-EraBoundary)
    - [EraSummaries](#utxorpc-v1alpha-cardano-EraSummaries)
    - [EraSummary](#utxorpc-v1alpha-cardano-EraSummary)
    - [EvalError](#utxorpc-v1alpha-cardano-EvalError)
    - [EvalTrace](#utxorpc-v1alpha-cardano-EvalTrace)
    - [ExPrices](#utxorpc-v1alpha-cardano-ExPrices)
    - [ExUnits](#utxorpc-v1alpha-cardano-ExUnits)
    - [GenesisKeyDelegationCert](#utxorpc-v1alpha-cardano-GenesisKeyDelegationCert)
    - [GovernanceAction](#utxorpc-v1alpha-cardano-GovernanceAction)
    - [GovernanceActionId](#utxorpc-v1alpha-cardano-GovernanceActionId)
    - [GovernanceActionProposal](#utxorpc-v1alpha-cardano-GovernanceActionProposal)
    - [HardForkInitiationAction](#utxorpc-v1alpha-cardano-HardForkInitiationAction)
    - [Metadata](#utxorpc-v1alpha-cardano-Metadata)
    - [Metadatum](#utxorpc-v1alpha-cardano-Metadatum)
    - [MetadatumArray](#utxorpc-v1alpha-cardano-MetadatumArray)
    - [MetadatumMap](#utxorpc-v1alpha-cardano-MetadatumMap)
    - [MetadatumPair](#utxorpc-v1alpha-cardano-MetadatumPair)
    - [MirCert](#utxorpc-v1alpha-cardano-MirCert)
    - [MirTarget](#utxorpc-v1alpha-cardano-MirTarget)
    - [Multiasset](#utxorpc-v1alpha-cardano-Multiasset)
    - [NativeScript](#utxorpc-v1alpha-cardano-NativeScript)
    - [NativeScriptList](#utxorpc-v1alpha-cardano-NativeScriptList)
    - [NewCommitteeCredentials](#utxorpc-v1alpha-cardano-NewCommitteeCredentials)
    - [NewConstitutionAction](#utxorpc-v1alpha-cardano-NewConstitutionAction)
    - [NoConfidenceAction](#utxorpc-v1alpha-cardano-NoConfidenceAction)
    - [PParams](#utxorpc-v1alpha-cardano-PParams)
    - [ParameterChangeAction](#utxorpc-v1alpha-cardano-ParameterChangeAction)
    - [PlutusData](#utxorpc-v1alpha-cardano-PlutusData)
    - [PlutusDataArray](#utxorpc-v1alpha-cardano-PlutusDataArray)
    - [PlutusDataMap](#utxorpc-v1alpha-cardano-PlutusDataMap)
    - [PlutusDataPair](#utxorpc-v1alpha-cardano-PlutusDataPair)
    - [PoolMetadata](#utxorpc-v1alpha-cardano-PoolMetadata)
    - [PoolRegistrationCert](#utxorpc-v1alpha-cardano-PoolRegistrationCert)
    - [PoolRetirementCert](#utxorpc-v1alpha-cardano-PoolRetirementCert)
    - [ProtocolVersion](#utxorpc-v1alpha-cardano-ProtocolVersion)
    - [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber)
    - [Redeemer](#utxorpc-v1alpha-cardano-Redeemer)
    - [RegCert](#utxorpc-v1alpha-cardano-RegCert)
    - [RegDRepCert](#utxorpc-v1alpha-cardano-RegDRepCert)
    - [Relay](#utxorpc-v1alpha-cardano-Relay)
    - [ResignCommitteeColdCert](#utxorpc-v1alpha-cardano-ResignCommitteeColdCert)
    - [Script](#utxorpc-v1alpha-cardano-Script)
    - [ScriptNOfK](#utxorpc-v1alpha-cardano-ScriptNOfK)
    - [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential)
    - [StakeDelegationCert](#utxorpc-v1alpha-cardano-StakeDelegationCert)
    - [StakeRegDelegCert](#utxorpc-v1alpha-cardano-StakeRegDelegCert)
    - [StakeVoteDelegCert](#utxorpc-v1alpha-cardano-StakeVoteDelegCert)
    - [StakeVoteRegDelegCert](#utxorpc-v1alpha-cardano-StakeVoteRegDelegCert)
    - [TreasuryWithdrawalsAction](#utxorpc-v1alpha-cardano-TreasuryWithdrawalsAction)
    - [Tx](#utxorpc-v1alpha-cardano-Tx)
    - [TxEval](#utxorpc-v1alpha-cardano-TxEval)
    - [TxInput](#utxorpc-v1alpha-cardano-TxInput)
    - [TxOutput](#utxorpc-v1alpha-cardano-TxOutput)
    - [TxOutputPattern](#utxorpc-v1alpha-cardano-TxOutputPattern)
    - [TxPattern](#utxorpc-v1alpha-cardano-TxPattern)
    - [TxValidity](#utxorpc-v1alpha-cardano-TxValidity)
    - [UnRegCert](#utxorpc-v1alpha-cardano-UnRegCert)
    - [UnRegDRepCert](#utxorpc-v1alpha-cardano-UnRegDRepCert)
    - [UpdateCommitteeAction](#utxorpc-v1alpha-cardano-UpdateCommitteeAction)
    - [UpdateDRepCert](#utxorpc-v1alpha-cardano-UpdateDRepCert)
    - [VKeyWitness](#utxorpc-v1alpha-cardano-VKeyWitness)
    - [VoteDelegCert](#utxorpc-v1alpha-cardano-VoteDelegCert)
    - [VoteRegDelegCert](#utxorpc-v1alpha-cardano-VoteRegDelegCert)
    - [VotingThresholds](#utxorpc-v1alpha-cardano-VotingThresholds)
    - [Withdrawal](#utxorpc-v1alpha-cardano-Withdrawal)
    - [WithdrawalAmount](#utxorpc-v1alpha-cardano-WithdrawalAmount)
    - [WitnessSet](#utxorpc-v1alpha-cardano-WitnessSet)
  
    - [MirSource](#utxorpc-v1alpha-cardano-MirSource)
    - [RedeemerPurpose](#utxorpc-v1alpha-cardano-RedeemerPurpose)
  
- [utxorpc/v1alpha/query/query.proto](#utxorpc_v1alpha_query_query-proto)
    - [AnyChainDatum](#utxorpc-v1alpha-query-AnyChainDatum)
    - [AnyChainParams](#utxorpc-v1alpha-query-AnyChainParams)
    - [AnyChainTx](#utxorpc-v1alpha-query-AnyChainTx)
    - [AnyUtxoData](#utxorpc-v1alpha-query-AnyUtxoData)
    - [AnyUtxoPattern](#utxorpc-v1alpha-query-AnyUtxoPattern)
    - [ChainPoint](#utxorpc-v1alpha-query-ChainPoint)
    - [ReadChainConfigRequest](#utxorpc-v1alpha-query-ReadChainConfigRequest)
    - [ReadChainConfigResponse](#utxorpc-v1alpha-query-ReadChainConfigResponse)
    - [ReadDataRequest](#utxorpc-v1alpha-query-ReadDataRequest)
    - [ReadDataResponse](#utxorpc-v1alpha-query-ReadDataResponse)
    - [ReadParamsRequest](#utxorpc-v1alpha-query-ReadParamsRequest)
    - [ReadParamsResponse](#utxorpc-v1alpha-query-ReadParamsResponse)
    - [ReadTxRequest](#utxorpc-v1alpha-query-ReadTxRequest)
    - [ReadTxResponse](#utxorpc-v1alpha-query-ReadTxResponse)
    - [ReadUtxosRequest](#utxorpc-v1alpha-query-ReadUtxosRequest)
    - [ReadUtxosResponse](#utxorpc-v1alpha-query-ReadUtxosResponse)
    - [SearchUtxosRequest](#utxorpc-v1alpha-query-SearchUtxosRequest)
    - [SearchUtxosResponse](#utxorpc-v1alpha-query-SearchUtxosResponse)
    - [TxoRef](#utxorpc-v1alpha-query-TxoRef)
    - [UtxoPredicate](#utxorpc-v1alpha-query-UtxoPredicate)
  
    - [QueryService](#utxorpc-v1alpha-query-QueryService)
  
- [utxorpc/v1alpha/submit/submit.proto](#utxorpc_v1alpha_submit_submit-proto)
    - [AnyChainEval](#utxorpc-v1alpha-submit-AnyChainEval)
    - [AnyChainTx](#utxorpc-v1alpha-submit-AnyChainTx)
    - [AnyChainTxPattern](#utxorpc-v1alpha-submit-AnyChainTxPattern)
    - [EvalTxRequest](#utxorpc-v1alpha-submit-EvalTxRequest)
    - [EvalTxResponse](#utxorpc-v1alpha-submit-EvalTxResponse)
    - [ReadMempoolRequest](#utxorpc-v1alpha-submit-ReadMempoolRequest)
    - [ReadMempoolResponse](#utxorpc-v1alpha-submit-ReadMempoolResponse)
    - [SubmitTxRequest](#utxorpc-v1alpha-submit-SubmitTxRequest)
    - [SubmitTxResponse](#utxorpc-v1alpha-submit-SubmitTxResponse)
    - [TxInMempool](#utxorpc-v1alpha-submit-TxInMempool)
    - [TxPredicate](#utxorpc-v1alpha-submit-TxPredicate)
    - [WaitForTxRequest](#utxorpc-v1alpha-submit-WaitForTxRequest)
    - [WaitForTxResponse](#utxorpc-v1alpha-submit-WaitForTxResponse)
    - [WatchMempoolRequest](#utxorpc-v1alpha-submit-WatchMempoolRequest)
    - [WatchMempoolResponse](#utxorpc-v1alpha-submit-WatchMempoolResponse)
  
    - [Stage](#utxorpc-v1alpha-submit-Stage)
  
    - [SubmitService](#utxorpc-v1alpha-submit-SubmitService)
  
- [utxorpc/v1alpha/sync/sync.proto](#utxorpc_v1alpha_sync_sync-proto)
    - [AnyChainBlock](#utxorpc-v1alpha-sync-AnyChainBlock)
    - [BlockRef](#utxorpc-v1alpha-sync-BlockRef)
    - [DumpHistoryRequest](#utxorpc-v1alpha-sync-DumpHistoryRequest)
    - [DumpHistoryResponse](#utxorpc-v1alpha-sync-DumpHistoryResponse)
    - [FetchBlockRequest](#utxorpc-v1alpha-sync-FetchBlockRequest)
    - [FetchBlockResponse](#utxorpc-v1alpha-sync-FetchBlockResponse)
    - [FollowTipRequest](#utxorpc-v1alpha-sync-FollowTipRequest)
    - [FollowTipResponse](#utxorpc-v1alpha-sync-FollowTipResponse)
    - [ReadTipRequest](#utxorpc-v1alpha-sync-ReadTipRequest)
    - [ReadTipResponse](#utxorpc-v1alpha-sync-ReadTipResponse)
  
    - [SyncService](#utxorpc-v1alpha-sync-SyncService)
  
- [utxorpc/v1alpha/watch/watch.proto](#utxorpc_v1alpha_watch_watch-proto)
    - [AnyChainTx](#utxorpc-v1alpha-watch-AnyChainTx)
    - [AnyChainTxPattern](#utxorpc-v1alpha-watch-AnyChainTxPattern)
    - [BlockRef](#utxorpc-v1alpha-watch-BlockRef)
    - [TxPredicate](#utxorpc-v1alpha-watch-TxPredicate)
    - [WatchTxRequest](#utxorpc-v1alpha-watch-WatchTxRequest)
    - [WatchTxResponse](#utxorpc-v1alpha-watch-WatchTxResponse)
  
    - [WatchService](#utxorpc-v1alpha-watch-WatchService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_v1alpha_cardano_cardano-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/v1alpha/cardano/cardano.proto



<a name="utxorpc-v1alpha-cardano-AddressPattern"></a>

### AddressPattern
Pattern of an address that can be used to evaluate matching predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| exact_address | [bytes](#bytes) |  | The address should match this exact address value. |
| payment_part | [bytes](#bytes) |  | The payment part of the address should match this value. |
| delegation_part | [bytes](#bytes) |  | The delegation part of the address should match this value. |






<a name="utxorpc-v1alpha-cardano-Anchor"></a>

### Anchor



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  |  |
| content_hash | [bytes](#bytes) |  |  |






<a name="utxorpc-v1alpha-cardano-Asset"></a>

### Asset
Represents a custom asset in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [bytes](#bytes) |  | Name of the custom asset. |
| output_coin | [uint64](#uint64) |  | Quantity of the custom asset in case of an output. |
| mint_coin | [int64](#int64) |  | Quantity of the custom asset in case of a mint. |






<a name="utxorpc-v1alpha-cardano-AssetPattern"></a>

### AssetPattern
Pattern of a native asset that can be used to evaluate matching predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| policy_id | [bytes](#bytes) |  | The asset should belong to this policy id |
| asset_name | [bytes](#bytes) |  | The asset should present this name |






<a name="utxorpc-v1alpha-cardano-AuthCommitteeHotCert"></a>

### AuthCommitteeHotCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| committee_cold_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| committee_hot_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |






<a name="utxorpc-v1alpha-cardano-AuxData"></a>

### AuxData
Auxiliary data not directly tied to the validation process


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [Metadata](#utxorpc-v1alpha-cardano-Metadata) | repeated | List of auxiliary metadata elements. |
| scripts | [Script](#utxorpc-v1alpha-cardano-Script) | repeated | List of auxiliary scripts. |






<a name="utxorpc-v1alpha-cardano-BigInt"></a>

### BigInt
Represents a big integer for Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| int | [int64](#int64) |  |  |
| big_u_int | [bytes](#bytes) |  |  |
| big_n_int | [bytes](#bytes) |  |  |






<a name="utxorpc-v1alpha-cardano-Block"></a>

### Block
Represents a complete block, including header and body.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [BlockHeader](#utxorpc-v1alpha-cardano-BlockHeader) |  | Block header. |
| body | [BlockBody](#utxorpc-v1alpha-cardano-BlockBody) |  | Block body. |






<a name="utxorpc-v1alpha-cardano-BlockBody"></a>

### BlockBody
Contains the transaction data for a block.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [Tx](#utxorpc-v1alpha-cardano-Tx) | repeated | List of transactions. |






<a name="utxorpc-v1alpha-cardano-BlockHeader"></a>

### BlockHeader
Contains the header information for a block.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [uint64](#uint64) |  | Slot number. |
| hash | [bytes](#bytes) |  | Block hash. |
| height | [uint64](#uint64) |  | Block height. |






<a name="utxorpc-v1alpha-cardano-Certificate"></a>

### Certificate
Represents a certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_registration | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  | Stake registration certificate. |
| stake_deregistration | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  | Stake deregistration certificate. |
| stake_delegation | [StakeDelegationCert](#utxorpc-v1alpha-cardano-StakeDelegationCert) |  | Stake delegation certificate. |
| pool_registration | [PoolRegistrationCert](#utxorpc-v1alpha-cardano-PoolRegistrationCert) |  | Pool registration certificate. |
| pool_retirement | [PoolRetirementCert](#utxorpc-v1alpha-cardano-PoolRetirementCert) |  | Pool retirement certificate. |
| genesis_key_delegation | [GenesisKeyDelegationCert](#utxorpc-v1alpha-cardano-GenesisKeyDelegationCert) |  | Genesis key delegation certificate. |
| mir_cert | [MirCert](#utxorpc-v1alpha-cardano-MirCert) |  | Move instantaneous rewards certificate. |
| reg_cert | [RegCert](#utxorpc-v1alpha-cardano-RegCert) |  | Registration certificate. |
| unreg_cert | [UnRegCert](#utxorpc-v1alpha-cardano-UnRegCert) |  | Unregistration certificate. |
| vote_deleg_cert | [VoteDelegCert](#utxorpc-v1alpha-cardano-VoteDelegCert) |  | Vote delegation certificate. |
| stake_vote_deleg_cert | [StakeVoteDelegCert](#utxorpc-v1alpha-cardano-StakeVoteDelegCert) |  | Stake and vote delegation certificate. |
| stake_reg_deleg_cert | [StakeRegDelegCert](#utxorpc-v1alpha-cardano-StakeRegDelegCert) |  | Stake registration and delegation certificate. |
| vote_reg_deleg_cert | [VoteRegDelegCert](#utxorpc-v1alpha-cardano-VoteRegDelegCert) |  | Vote registration and delegation certificate. |
| stake_vote_reg_deleg_cert | [StakeVoteRegDelegCert](#utxorpc-v1alpha-cardano-StakeVoteRegDelegCert) |  | Stake and vote registration and delegation certificate. |
| auth_committee_hot_cert | [AuthCommitteeHotCert](#utxorpc-v1alpha-cardano-AuthCommitteeHotCert) |  | Authorize committee hot key certificate. |
| resign_committee_cold_cert | [ResignCommitteeColdCert](#utxorpc-v1alpha-cardano-ResignCommitteeColdCert) |  | Resign committee cold key certificate. |
| reg_drep_cert | [RegDRepCert](#utxorpc-v1alpha-cardano-RegDRepCert) |  | Register DRep certificate. |
| unreg_drep_cert | [UnRegDRepCert](#utxorpc-v1alpha-cardano-UnRegDRepCert) |  | Unregister DRep certificate. |
| update_drep_cert | [UpdateDRepCert](#utxorpc-v1alpha-cardano-UpdateDRepCert) |  | Update DRep certificate. |
| redeemer | [Redeemer](#utxorpc-v1alpha-cardano-Redeemer) |  | Redeemer for the Plutus script. |






<a name="utxorpc-v1alpha-cardano-Collateral"></a>

### Collateral
Represents the collateral information for a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collateral | [TxInput](#utxorpc-v1alpha-cardano-TxInput) | repeated | Collateral inputs for the transaction. |
| collateral_return | [TxOutput](#utxorpc-v1alpha-cardano-TxOutput) |  | Collateral return in case of script failure. |
| total_collateral | [uint64](#uint64) |  | Total amount of collateral. |






<a name="utxorpc-v1alpha-cardano-Constitution"></a>

### Constitution



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| anchor | [Anchor](#utxorpc-v1alpha-cardano-Anchor) |  | Anchor to the new document |
| hash | [bytes](#bytes) |  | Hash of the document |






<a name="utxorpc-v1alpha-cardano-Constr"></a>

### Constr
Represents a constructor for Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tag | [uint32](#uint32) |  |  |
| any_constructor | [uint64](#uint64) |  |  |
| fields | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) | repeated |  |






<a name="utxorpc-v1alpha-cardano-CostModel"></a>

### CostModel



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| values | [int64](#int64) | repeated |  |






<a name="utxorpc-v1alpha-cardano-CostModels"></a>

### CostModels



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plutus_v1 | [CostModel](#utxorpc-v1alpha-cardano-CostModel) |  |  |
| plutus_v2 | [CostModel](#utxorpc-v1alpha-cardano-CostModel) |  |  |
| plutus_v3 | [CostModel](#utxorpc-v1alpha-cardano-CostModel) |  |  |






<a name="utxorpc-v1alpha-cardano-DRep"></a>

### DRep



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addr_key_hash | [bytes](#bytes) |  | Address key hash |
| script_hash | [bytes](#bytes) |  | Script hash |
| abstain | [bool](#bool) |  | Abstain |
| no_confidence | [bool](#bool) |  | No confidence |






<a name="utxorpc-v1alpha-cardano-Datum"></a>

### Datum



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | Hash of this datum as seen on-chain |
| payload | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) |  | Parsed Plutus data payload |
| original_cbor | [bytes](#bytes) |  | Original cbor-encoded data as seen on-chain |






<a name="utxorpc-v1alpha-cardano-EraBoundary"></a>

### EraBoundary



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| time | [uint64](#uint64) |  | ms timestamp |
| slot | [uint64](#uint64) |  | absolute slot number of the first block of this era |
| epoch | [uint64](#uint64) |  | first epoch for this era |






<a name="utxorpc-v1alpha-cardano-EraSummaries"></a>

### EraSummaries



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| summaries | [EraSummary](#utxorpc-v1alpha-cardano-EraSummary) | repeated |  |






<a name="utxorpc-v1alpha-cardano-EraSummary"></a>

### EraSummary



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | name of the era (ex: &#34;shelley&#34;) |
| start | [EraBoundary](#utxorpc-v1alpha-cardano-EraBoundary) |  | start of this era |
| end | [EraBoundary](#utxorpc-v1alpha-cardano-EraBoundary) |  | end of this era (if the era has a well-defined ending) |
| config | [string](#string) |  | encoded structure of the configuration for this era |






<a name="utxorpc-v1alpha-cardano-EvalError"></a>

### EvalError



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| msg | [string](#string) |  |  |






<a name="utxorpc-v1alpha-cardano-EvalTrace"></a>

### EvalTrace



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| msg | [string](#string) |  |  |






<a name="utxorpc-v1alpha-cardano-ExPrices"></a>

### ExPrices



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| steps | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  |  |
| memory | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  |  |






<a name="utxorpc-v1alpha-cardano-ExUnits"></a>

### ExUnits



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| steps | [uint64](#uint64) |  |  |
| memory | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-GenesisKeyDelegationCert"></a>

### GenesisKeyDelegationCert
Represents a genesis key delegation certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| genesis_hash | [bytes](#bytes) |  | Genesis hash. |
| genesis_delegate_hash | [bytes](#bytes) |  | Genesis delegate hash. |
| vrf_keyhash | [bytes](#bytes) |  | VRF key hash. |






<a name="utxorpc-v1alpha-cardano-GovernanceAction"></a>

### GovernanceAction
Define a Governance Action


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parameter_change_action | [ParameterChangeAction](#utxorpc-v1alpha-cardano-ParameterChangeAction) |  | Change on-chain parameters |
| hard_fork_initiation_action | [HardForkInitiationAction](#utxorpc-v1alpha-cardano-HardForkInitiationAction) |  | Initiate a Hard Fork |
| treasury_withdrawals_action | [TreasuryWithdrawalsAction](#utxorpc-v1alpha-cardano-TreasuryWithdrawalsAction) |  | Withdraw from the Treasury |
| no_confidence_action | [NoConfidenceAction](#utxorpc-v1alpha-cardano-NoConfidenceAction) |  |  |
| update_committee_action | [UpdateCommitteeAction](#utxorpc-v1alpha-cardano-UpdateCommitteeAction) |  | Update the Constitution Committee |
| new_constitution_action | [NewConstitutionAction](#utxorpc-v1alpha-cardano-NewConstitutionAction) |  | Replace the Constitution |
| info_action | [uint32](#uint32) |  | TODO: revisit if there&#39;s a better way to handle this option because it doesn&#39;t actually need a value but proto syntax needs to require it

Info action should just be the integer number 6 |






<a name="utxorpc-v1alpha-cardano-GovernanceActionId"></a>

### GovernanceActionId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [bytes](#bytes) |  |  |
| governance_action_index | [uint32](#uint32) |  |  |






<a name="utxorpc-v1alpha-cardano-GovernanceActionProposal"></a>

### GovernanceActionProposal
Define a governance action proposal


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| deposit | [uint64](#uint64) |  | The amount deposited for the governance action |
| reward_account | [bytes](#bytes) |  | The reward account the deposit should be returned to |
| gov_action | [GovernanceAction](#utxorpc-v1alpha-cardano-GovernanceAction) |  |  |
| anchor | [Anchor](#utxorpc-v1alpha-cardano-Anchor) |  |  |






<a name="utxorpc-v1alpha-cardano-HardForkInitiationAction"></a>

### HardForkInitiationAction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov_action_id | [GovernanceActionId](#utxorpc-v1alpha-cardano-GovernanceActionId) |  |  |
| protocol_version | [ProtocolVersion](#utxorpc-v1alpha-cardano-ProtocolVersion) |  | The protocol version to fork to |






<a name="utxorpc-v1alpha-cardano-Metadata"></a>

### Metadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label | [uint64](#uint64) |  |  |
| value | [Metadatum](#utxorpc-v1alpha-cardano-Metadatum) |  |  |






<a name="utxorpc-v1alpha-cardano-Metadatum"></a>

### Metadatum



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| int | [int64](#int64) |  |  |
| bytes | [bytes](#bytes) |  |  |
| text | [string](#string) |  |  |
| array | [MetadatumArray](#utxorpc-v1alpha-cardano-MetadatumArray) |  |  |
| map | [MetadatumMap](#utxorpc-v1alpha-cardano-MetadatumMap) |  |  |






<a name="utxorpc-v1alpha-cardano-MetadatumArray"></a>

### MetadatumArray



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Metadatum](#utxorpc-v1alpha-cardano-Metadatum) | repeated |  |






<a name="utxorpc-v1alpha-cardano-MetadatumMap"></a>

### MetadatumMap



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pairs | [MetadatumPair](#utxorpc-v1alpha-cardano-MetadatumPair) | repeated |  |






<a name="utxorpc-v1alpha-cardano-MetadatumPair"></a>

### MetadatumPair



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [Metadatum](#utxorpc-v1alpha-cardano-Metadatum) |  |  |
| value | [Metadatum](#utxorpc-v1alpha-cardano-Metadatum) |  |  |






<a name="utxorpc-v1alpha-cardano-MirCert"></a>

### MirCert
Represents a move instantaneous reward certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| from | [MirSource](#utxorpc-v1alpha-cardano-MirSource) |  |  |
| to | [MirTarget](#utxorpc-v1alpha-cardano-MirTarget) | repeated |  |
| other_pot | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-MirTarget"></a>

### MirTarget



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| delta_coin | [int64](#int64) |  |  |






<a name="utxorpc-v1alpha-cardano-Multiasset"></a>

### Multiasset
Represents a multi-asset group in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| policy_id | [bytes](#bytes) |  | Policy ID governing the custom assets. |
| assets | [Asset](#utxorpc-v1alpha-cardano-Asset) | repeated | List of custom assets. |
| redeemer | [Redeemer](#utxorpc-v1alpha-cardano-Redeemer) |  | Redeemer for the Plutus script. |






<a name="utxorpc-v1alpha-cardano-NativeScript"></a>

### NativeScript
Represents a native script in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| script_pubkey | [bytes](#bytes) |  | Script based on an address key hash. |
| script_all | [NativeScriptList](#utxorpc-v1alpha-cardano-NativeScriptList) |  | Script that requires all nested scripts to be satisfied. |
| script_any | [NativeScriptList](#utxorpc-v1alpha-cardano-NativeScriptList) |  | Script that requires any of the nested scripts to be satisfied. |
| script_n_of_k | [ScriptNOfK](#utxorpc-v1alpha-cardano-ScriptNOfK) |  | Script that requires k out of n nested scripts to be satisfied. |
| invalid_before | [uint64](#uint64) |  | Slot number before which the script is invalid. |
| invalid_hereafter | [uint64](#uint64) |  | Slot number after which the script is invalid. |






<a name="utxorpc-v1alpha-cardano-NativeScriptList"></a>

### NativeScriptList
Represents a list of native scripts.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [NativeScript](#utxorpc-v1alpha-cardano-NativeScript) | repeated | List of native scripts. |






<a name="utxorpc-v1alpha-cardano-NewCommitteeCredentials"></a>

### NewCommitteeCredentials
The new committee credential are passed as a map where the key is the committee cold credential hash
and the value is the expiration epoch for that credential


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| committee_cold_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| expires_epoch | [uint32](#uint32) |  |  |






<a name="utxorpc-v1alpha-cardano-NewConstitutionAction"></a>

### NewConstitutionAction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov_action_id | [GovernanceActionId](#utxorpc-v1alpha-cardano-GovernanceActionId) |  |  |
| constitution | [Constitution](#utxorpc-v1alpha-cardano-Constitution) |  | The Constitution proposed |






<a name="utxorpc-v1alpha-cardano-NoConfidenceAction"></a>

### NoConfidenceAction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov_action_id | [GovernanceActionId](#utxorpc-v1alpha-cardano-GovernanceActionId) |  |  |






<a name="utxorpc-v1alpha-cardano-PParams"></a>

### PParams



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| coins_per_utxo_byte | [uint64](#uint64) |  | The number of coins per UTXO byte. |
| max_tx_size | [uint64](#uint64) |  | The maximum transaction size. |
| min_fee_coefficient | [uint64](#uint64) |  | The minimum fee coefficient. |
| min_fee_constant | [uint64](#uint64) |  | The minimum fee constant. |
| max_block_body_size | [uint64](#uint64) |  | The maximum block body size. |
| max_block_header_size | [uint64](#uint64) |  | The maximum block header size. |
| stake_key_deposit | [uint64](#uint64) |  | The stake key deposit. |
| pool_deposit | [uint64](#uint64) |  | The pool deposit. |
| pool_retirement_epoch_bound | [uint64](#uint64) |  | The pool retirement epoch bound. |
| desired_number_of_pools | [uint64](#uint64) |  | The desired number of pools. |
| pool_influence | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  | The pool influence. |
| monetary_expansion | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  | The monetary expansion. |
| treasury_expansion | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  | The treasury expansion. |
| min_pool_cost | [uint64](#uint64) |  | The minimum pool cost. |
| protocol_version | [ProtocolVersion](#utxorpc-v1alpha-cardano-ProtocolVersion) |  | The protocol version. |
| max_value_size | [uint64](#uint64) |  | The maximum value size. |
| collateral_percentage | [uint64](#uint64) |  | The collateral percentage. |
| max_collateral_inputs | [uint64](#uint64) |  | The maximum collateral inputs. |
| cost_models | [CostModels](#utxorpc-v1alpha-cardano-CostModels) |  | The cost models. |
| prices | [ExPrices](#utxorpc-v1alpha-cardano-ExPrices) |  | The prices. |
| max_execution_units_per_transaction | [ExUnits](#utxorpc-v1alpha-cardano-ExUnits) |  | The maximum execution units per transaction. |
| max_execution_units_per_block | [ExUnits](#utxorpc-v1alpha-cardano-ExUnits) |  | The maximum execution units per block. |
| min_fee_script_ref_cost_per_byte | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  | The minimum fee per script reference byte. |
| pool_voting_thresholds | [VotingThresholds](#utxorpc-v1alpha-cardano-VotingThresholds) |  | The pool voting thresholds. |
| drep_voting_thresholds | [VotingThresholds](#utxorpc-v1alpha-cardano-VotingThresholds) |  | The drep voting thresholds. |
| min_committee_size | [uint32](#uint32) |  | The minimum committee size. |
| committee_term_limit | [uint64](#uint64) |  | The committee term limit. |
| governance_action_validity_period | [uint64](#uint64) |  | The governance action validity period. |
| governance_action_deposit | [uint64](#uint64) |  | The governance action deposit. |
| drep_deposit | [uint64](#uint64) |  | The drep deposit. |
| drep_inactivity_period | [uint64](#uint64) |  | The drep inactivity period. |






<a name="utxorpc-v1alpha-cardano-ParameterChangeAction"></a>

### ParameterChangeAction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov_action_id | [GovernanceActionId](#utxorpc-v1alpha-cardano-GovernanceActionId) |  |  |
| protocol_param_update | [PParams](#utxorpc-v1alpha-cardano-PParams) |  | The updates proposed |
| policy_hash | [bytes](#bytes) |  |  |






<a name="utxorpc-v1alpha-cardano-PlutusData"></a>

### PlutusData
Represents a Plutus data item in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| constr | [Constr](#utxorpc-v1alpha-cardano-Constr) |  | Constructor. |
| map | [PlutusDataMap](#utxorpc-v1alpha-cardano-PlutusDataMap) |  | Map of Plutus data. |
| big_int | [BigInt](#utxorpc-v1alpha-cardano-BigInt) |  | Big integer. |
| bounded_bytes | [bytes](#bytes) |  | Bounded bytes. |
| array | [PlutusDataArray](#utxorpc-v1alpha-cardano-PlutusDataArray) |  | Array of Plutus data. |






<a name="utxorpc-v1alpha-cardano-PlutusDataArray"></a>

### PlutusDataArray
Represents an array of Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) | repeated | List of Plutus data items. |






<a name="utxorpc-v1alpha-cardano-PlutusDataMap"></a>

### PlutusDataMap
Represents a map of Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pairs | [PlutusDataPair](#utxorpc-v1alpha-cardano-PlutusDataPair) | repeated | List of key-value pairs. |






<a name="utxorpc-v1alpha-cardano-PlutusDataPair"></a>

### PlutusDataPair
Represents a key-value pair for Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) |  | Key of the pair. |
| value | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) |  | Value of the pair. |






<a name="utxorpc-v1alpha-cardano-PoolMetadata"></a>

### PoolMetadata
Represents pool metadata in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  |  |
| hash | [bytes](#bytes) |  |  |






<a name="utxorpc-v1alpha-cardano-PoolRegistrationCert"></a>

### PoolRegistrationCert
Represents a pool registration certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operator | [bytes](#bytes) |  | Operator key hash. |
| vrf_keyhash | [bytes](#bytes) |  | VRF key hash. |
| pledge | [uint64](#uint64) |  | Pledge amount. |
| cost | [uint64](#uint64) |  | Pool cost. |
| margin | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  | Pool margin. |
| reward_account | [bytes](#bytes) |  | Reward account. |
| pool_owners | [bytes](#bytes) | repeated | List of pool owner key hashes. |
| relays | [Relay](#utxorpc-v1alpha-cardano-Relay) | repeated | List of relays. |
| pool_metadata | [PoolMetadata](#utxorpc-v1alpha-cardano-PoolMetadata) |  | Pool metadata. |






<a name="utxorpc-v1alpha-cardano-PoolRetirementCert"></a>

### PoolRetirementCert
Represents a pool retirement certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pool_keyhash | [bytes](#bytes) |  | Pool key hash. |
| epoch | [uint64](#uint64) |  | Retirement epoch. |






<a name="utxorpc-v1alpha-cardano-ProtocolVersion"></a>

### ProtocolVersion



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| major | [uint32](#uint32) |  |  |
| minor | [uint32](#uint32) |  |  |






<a name="utxorpc-v1alpha-cardano-RationalNumber"></a>

### RationalNumber
Represents a rational number as a fraction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| numerator | [int32](#int32) |  |  |
| denominator | [uint32](#uint32) |  |  |






<a name="utxorpc-v1alpha-cardano-Redeemer"></a>

### Redeemer
Redeemer information for a Plutus script.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| purpose | [RedeemerPurpose](#utxorpc-v1alpha-cardano-RedeemerPurpose) |  | Purpose of the redeemer. |
| payload | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) |  | Plutus data associated with the redeemer. |
| index | [uint32](#uint32) |  | Index of the redeemer. |
| ex_units | [ExUnits](#utxorpc-v1alpha-cardano-ExUnits) |  | Execution units consumed by the redeemer. |
| original_cbor | [bytes](#bytes) |  | Original cbor-encoded data as seen on-chain |






<a name="utxorpc-v1alpha-cardano-RegCert"></a>

### RegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-RegDRepCert"></a>

### RegDRepCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| drep_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| coin | [uint64](#uint64) |  |  |
| anchor | [Anchor](#utxorpc-v1alpha-cardano-Anchor) |  |  |






<a name="utxorpc-v1alpha-cardano-Relay"></a>

### Relay
Represents a relay in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ip_v4 | [bytes](#bytes) |  |  |
| ip_v6 | [bytes](#bytes) |  |  |
| dns_name | [string](#string) |  |  |
| port | [uint32](#uint32) |  |  |






<a name="utxorpc-v1alpha-cardano-ResignCommitteeColdCert"></a>

### ResignCommitteeColdCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| committee_cold_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| anchor | [Anchor](#utxorpc-v1alpha-cardano-Anchor) |  |  |






<a name="utxorpc-v1alpha-cardano-Script"></a>

### Script
Represents a script in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native | [NativeScript](#utxorpc-v1alpha-cardano-NativeScript) |  | Native script. |
| plutus_v1 | [bytes](#bytes) |  | Plutus V1 script. |
| plutus_v2 | [bytes](#bytes) |  | Plutus V2 script. |
| plutus_v3 | [bytes](#bytes) |  | Plutus V3 script. |






<a name="utxorpc-v1alpha-cardano-ScriptNOfK"></a>

### ScriptNOfK
Represents a &#34;k out of n&#34; native script.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| k | [uint32](#uint32) |  | The number of required satisfied scripts. |
| scripts | [NativeScript](#utxorpc-v1alpha-cardano-NativeScript) | repeated | List of native scripts. |






<a name="utxorpc-v1alpha-cardano-StakeCredential"></a>

### StakeCredential
Represents a stake credential in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addr_key_hash | [bytes](#bytes) |  | Address key hash. |
| script_hash | [bytes](#bytes) |  | Script hash. |






<a name="utxorpc-v1alpha-cardano-StakeDelegationCert"></a>

### StakeDelegationCert
Represents a stake delegation certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  | Stake credential. |
| pool_keyhash | [bytes](#bytes) |  | Pool key hash. |






<a name="utxorpc-v1alpha-cardano-StakeRegDelegCert"></a>

### StakeRegDelegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| pool_keyhash | [bytes](#bytes) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-StakeVoteDelegCert"></a>

### StakeVoteDelegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| pool_keyhash | [bytes](#bytes) |  |  |
| drep | [DRep](#utxorpc-v1alpha-cardano-DRep) |  |  |






<a name="utxorpc-v1alpha-cardano-StakeVoteRegDelegCert"></a>

### StakeVoteRegDelegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| pool_keyhash | [bytes](#bytes) |  |  |
| drep | [DRep](#utxorpc-v1alpha-cardano-DRep) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-TreasuryWithdrawalsAction"></a>

### TreasuryWithdrawalsAction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| withdrawals | [WithdrawalAmount](#utxorpc-v1alpha-cardano-WithdrawalAmount) | repeated | A map of the withdrawals to make |
| policy_hash | [bytes](#bytes) |  |  |






<a name="utxorpc-v1alpha-cardano-Tx"></a>

### Tx
Represents a transaction in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inputs | [TxInput](#utxorpc-v1alpha-cardano-TxInput) | repeated | List of transaction inputs |
| outputs | [TxOutput](#utxorpc-v1alpha-cardano-TxOutput) | repeated | List of transaction outputs |
| certificates | [Certificate](#utxorpc-v1alpha-cardano-Certificate) | repeated | List of certificates |
| withdrawals | [Withdrawal](#utxorpc-v1alpha-cardano-Withdrawal) | repeated | List of withdrawals |
| mint | [Multiasset](#utxorpc-v1alpha-cardano-Multiasset) | repeated | List of minted custom assets |
| reference_inputs | [TxInput](#utxorpc-v1alpha-cardano-TxInput) | repeated | List of reference inputs |
| witnesses | [WitnessSet](#utxorpc-v1alpha-cardano-WitnessSet) |  | Witnesses that validte the transaction |
| collateral | [Collateral](#utxorpc-v1alpha-cardano-Collateral) |  | Collateral details in case of failed transaction |
| fee | [uint64](#uint64) |  | Transaction fee in ADA |
| validity | [TxValidity](#utxorpc-v1alpha-cardano-TxValidity) |  | Validity interval of the transaction |
| successful | [bool](#bool) |  | Flag indicating whether the transaction was successful |
| auxiliary | [AuxData](#utxorpc-v1alpha-cardano-AuxData) |  | Auxiliary data not directly tied to the validation process |
| hash | [bytes](#bytes) |  | Hash of the transaction that serves as main identifier |
| proposals | [GovernanceActionProposal](#utxorpc-v1alpha-cardano-GovernanceActionProposal) | repeated | List of governance actions proposed |






<a name="utxorpc-v1alpha-cardano-TxEval"></a>

### TxEval



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fee | [uint64](#uint64) |  |  |
| ex_units | [ExUnits](#utxorpc-v1alpha-cardano-ExUnits) |  |  |
| errors | [EvalError](#utxorpc-v1alpha-cardano-EvalError) | repeated |  |
| traces | [EvalTrace](#utxorpc-v1alpha-cardano-EvalTrace) | repeated |  |
| redeemers | [Redeemer](#utxorpc-v1alpha-cardano-Redeemer) | repeated |  |






<a name="utxorpc-v1alpha-cardano-TxInput"></a>

### TxInput
Represents a transaction input in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_hash | [bytes](#bytes) |  | Hash of the previous transaction. |
| output_index | [uint32](#uint32) |  | Index of the output in the previous transaction. |
| as_output | [TxOutput](#utxorpc-v1alpha-cardano-TxOutput) |  | Content of the input represented as output of the related transaction |
| redeemer | [Redeemer](#utxorpc-v1alpha-cardano-Redeemer) |  | Redeemer for the Plutus script. |






<a name="utxorpc-v1alpha-cardano-TxOutput"></a>

### TxOutput
Represents a transaction output in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [bytes](#bytes) |  | Address receiving the output. |
| coin | [uint64](#uint64) |  | Amount of ADA in the output. |
| assets | [Multiasset](#utxorpc-v1alpha-cardano-Multiasset) | repeated | Additional native (non-ADA) assets in the output. |
| datum | [Datum](#utxorpc-v1alpha-cardano-Datum) |  | Plutus data associated with the output. |
| script | [Script](#utxorpc-v1alpha-cardano-Script) |  | Script associated with the output. |






<a name="utxorpc-v1alpha-cardano-TxOutputPattern"></a>

### TxOutputPattern
Pattern of a tx output that can be used to evaluate matching predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [AddressPattern](#utxorpc-v1alpha-cardano-AddressPattern) |  | Match any address in the output that exhibits this pattern. |
| asset | [AssetPattern](#utxorpc-v1alpha-cardano-AssetPattern) |  | Match any asset in the output that exhibits this pattern. |






<a name="utxorpc-v1alpha-cardano-TxPattern"></a>

### TxPattern
Pattern of a Tx that can be used to evaluate matching predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| consumes | [TxOutputPattern](#utxorpc-v1alpha-cardano-TxOutputPattern) |  | Match any input that exhibits this pattern. |
| produces | [TxOutputPattern](#utxorpc-v1alpha-cardano-TxOutputPattern) |  | Match any output that exhibits this pattern. |
| has_address | [AddressPattern](#utxorpc-v1alpha-cardano-AddressPattern) |  | Match any address (inputs, outputs, collateral, etc) that exhibits this pattern. |
| moves_asset | [AssetPattern](#utxorpc-v1alpha-cardano-AssetPattern) |  | Match any asset that exhibits this pattern. |
| mints_asset | [AssetPattern](#utxorpc-v1alpha-cardano-AssetPattern) |  | Match any tx that either mint or burn the the asset pattern. |






<a name="utxorpc-v1alpha-cardano-TxValidity"></a>

### TxValidity
Represents the validity interval of a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [uint64](#uint64) |  | Start of the validity interval. |
| ttl | [uint64](#uint64) |  | End of the validity interval (TTL: Time to Live). |






<a name="utxorpc-v1alpha-cardano-UnRegCert"></a>

### UnRegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-UnRegDRepCert"></a>

### UnRegDRepCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| drep_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-UpdateCommitteeAction"></a>

### UpdateCommitteeAction



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov_action_id | [GovernanceActionId](#utxorpc-v1alpha-cardano-GovernanceActionId) |  |  |
| remove_committee_credentials | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) | repeated | Committee members to remove (if any) |
| new_committee_credentials | [NewCommitteeCredentials](#utxorpc-v1alpha-cardano-NewCommitteeCredentials) | repeated | The new committee members |
| new_committee_threshold | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) |  | The required threshold for the committee |






<a name="utxorpc-v1alpha-cardano-UpdateDRepCert"></a>

### UpdateDRepCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| drep_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| anchor | [Anchor](#utxorpc-v1alpha-cardano-Anchor) |  |  |






<a name="utxorpc-v1alpha-cardano-VKeyWitness"></a>

### VKeyWitness
Represents a VKey witness used to sign a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vkey | [bytes](#bytes) |  | Verification key. |
| signature | [bytes](#bytes) |  | Signature generated using the associated private key. |






<a name="utxorpc-v1alpha-cardano-VoteDelegCert"></a>

### VoteDelegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| drep | [DRep](#utxorpc-v1alpha-cardano-DRep) |  |  |






<a name="utxorpc-v1alpha-cardano-VoteRegDelegCert"></a>

### VoteRegDelegCert



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-v1alpha-cardano-StakeCredential) |  |  |
| drep | [DRep](#utxorpc-v1alpha-cardano-DRep) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-VotingThresholds"></a>

### VotingThresholds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| thresholds | [RationalNumber](#utxorpc-v1alpha-cardano-RationalNumber) | repeated |  |






<a name="utxorpc-v1alpha-cardano-Withdrawal"></a>

### Withdrawal
Represents a withdrawal from a reward account.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reward_account | [bytes](#bytes) |  | Address of the reward account. |
| coin | [uint64](#uint64) |  | Amount of ADA withdrawn. |
| redeemer | [Redeemer](#utxorpc-v1alpha-cardano-Redeemer) |  | Redeemer for the Plutus script. |






<a name="utxorpc-v1alpha-cardano-WithdrawalAmount"></a>

### WithdrawalAmount



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reward_account | [bytes](#bytes) |  |  |
| coin | [uint64](#uint64) |  |  |






<a name="utxorpc-v1alpha-cardano-WitnessSet"></a>

### WitnessSet
Represents a set of witnesses that validate a transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vkeywitness | [VKeyWitness](#utxorpc-v1alpha-cardano-VKeyWitness) | repeated | List of VKey witnesses. |
| script | [Script](#utxorpc-v1alpha-cardano-Script) | repeated | List of scripts. |
| plutus_datums | [PlutusData](#utxorpc-v1alpha-cardano-PlutusData) | repeated | List of Plutus data elements associated with the transaction. |





 


<a name="utxorpc-v1alpha-cardano-MirSource"></a>

### MirSource


| Name | Number | Description |
| ---- | ------ | ----------- |
| MIR_SOURCE_UNSPECIFIED | 0 |  |
| MIR_SOURCE_RESERVES | 1 |  |
| MIR_SOURCE_TREASURY | 2 |  |



<a name="utxorpc-v1alpha-cardano-RedeemerPurpose"></a>

### RedeemerPurpose
Purpose of the redeemer in a transaction.

| Name | Number | Description |
| ---- | ------ | ----------- |
| REDEEMER_PURPOSE_UNSPECIFIED | 0 |  |
| REDEEMER_PURPOSE_SPEND | 1 |  |
| REDEEMER_PURPOSE_MINT | 2 |  |
| REDEEMER_PURPOSE_CERT | 3 |  |
| REDEEMER_PURPOSE_REWARD | 4 |  |
| REDEEMER_PURPOSE_VOTE | 5 |  |
| REDEEMER_PURPOSE_PROPOSE | 6 |  |


 

 

 



<a name="utxorpc_v1alpha_query_query-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/v1alpha/query/query.proto



<a name="utxorpc-v1alpha-query-AnyChainDatum"></a>

### AnyChainDatum
An evenlope that holds a datum for any of the compatible chains


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native_bytes | [bytes](#bytes) |  | Original bytes as defined by the chain |
| key | [bytes](#bytes) |  |  |
| cardano | [utxorpc.v1alpha.cardano.PlutusData](#utxorpc-v1alpha-cardano-PlutusData) |  | A cardano UTxO |






<a name="utxorpc-v1alpha-query-AnyChainParams"></a>

### AnyChainParams
An evenlope that holds parameter data from any of the compatible chains


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.v1alpha.cardano.PParams](#utxorpc-v1alpha-cardano-PParams) |  | Cardano parameters |






<a name="utxorpc-v1alpha-query-AnyChainTx"></a>

### AnyChainTx
Represents a transaction from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native_bytes | [bytes](#bytes) |  | Original bytes as defined by the chain |
| cardano | [utxorpc.v1alpha.cardano.Tx](#utxorpc-v1alpha-cardano-Tx) |  | A Cardano transaction. |






<a name="utxorpc-v1alpha-query-AnyUtxoData"></a>

### AnyUtxoData
An evenlope that holds an UTxO from any of compatible chains


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native_bytes | [bytes](#bytes) |  | Original bytes as defined by the chain |
| txo_ref | [TxoRef](#utxorpc-v1alpha-query-TxoRef) |  | Hash of the previous transaction. |
| cardano | [utxorpc.v1alpha.cardano.TxOutput](#utxorpc-v1alpha-cardano-TxOutput) |  | A cardano UTxO |






<a name="utxorpc-v1alpha-query-AnyUtxoPattern"></a>

### AnyUtxoPattern
An evenlope that holds an UTxO patterns from any of compatible chains


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.v1alpha.cardano.TxOutputPattern](#utxorpc-v1alpha-cardano-TxOutputPattern) |  |  |






<a name="utxorpc-v1alpha-query-ChainPoint"></a>

### ChainPoint
Represents a specific point in the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [uint64](#uint64) |  | Slot number. |
| hash | [bytes](#bytes) |  | Block hash. |






<a name="utxorpc-v1alpha-query-ReadChainConfigRequest"></a>

### ReadChainConfigRequest
Request to get the chain config


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields in the parsed response. |






<a name="utxorpc-v1alpha-query-ReadChainConfigResponse"></a>

### ReadChainConfigResponse
Response containing the chain config


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| genesis | [bytes](#bytes) |  | genesis hash for the chain |
| caip2 | [string](#string) |  | the caip-2 ID for this network |
| cardano | [utxorpc.v1alpha.cardano.EraSummaries](#utxorpc-v1alpha-cardano-EraSummaries) |  | Cardano era summary |






<a name="utxorpc-v1alpha-query-ReadDataRequest"></a>

### ReadDataRequest
Request to get data (as in plural of datum)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| keys | [bytes](#bytes) | repeated |  |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields in the response. |






<a name="utxorpc-v1alpha-query-ReadDataResponse"></a>

### ReadDataResponse
Response containing data (as in plural of datum)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| values | [AnyChainDatum](#utxorpc-v1alpha-query-AnyChainDatum) | repeated | The value of each datum. |
| ledger_tip | [ChainPoint](#utxorpc-v1alpha-query-ChainPoint) |  | The chain point that represent the ledger current position. |






<a name="utxorpc-v1alpha-query-ReadParamsRequest"></a>

### ReadParamsRequest
Request to get the chain parameters


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields in the parsed response. |






<a name="utxorpc-v1alpha-query-ReadParamsResponse"></a>

### ReadParamsResponse
Response containing the chain parameters


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| values | [AnyChainParams](#utxorpc-v1alpha-query-AnyChainParams) |  | The value of the parameters. |
| ledger_tip | [ChainPoint](#utxorpc-v1alpha-query-ChainPoint) |  | The chain point that represent the ledger current position. |






<a name="utxorpc-v1alpha-query-ReadTxRequest"></a>

### ReadTxRequest
Request to get a transaction by hash


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | The hash of the transaction. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields in the response. |






<a name="utxorpc-v1alpha-query-ReadTxResponse"></a>

### ReadTxResponse
Response containing the transaction associated with the requested hash.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [AnyChainTx](#utxorpc-v1alpha-query-AnyChainTx) |  | The transaction. |
| ledger_tip | [ChainPoint](#utxorpc-v1alpha-query-ChainPoint) |  | The chain point that represent the ledger current position. |






<a name="utxorpc-v1alpha-query-ReadUtxosRequest"></a>

### ReadUtxosRequest
Request to get specific UTxOs


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| keys | [TxoRef](#utxorpc-v1alpha-query-TxoRef) | repeated | List of keys UTxOs. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-v1alpha-query-ReadUtxosResponse"></a>

### ReadUtxosResponse
Response containing the UTxOs associated with the requested addresses.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [AnyUtxoData](#utxorpc-v1alpha-query-AnyUtxoData) | repeated | List of UTxOs. |
| ledger_tip | [ChainPoint](#utxorpc-v1alpha-query-ChainPoint) |  | The chain point that represent the ledger current position. |






<a name="utxorpc-v1alpha-query-SearchUtxosRequest"></a>

### SearchUtxosRequest
Request to search for UTxO based on a pattern.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| predicate | [UtxoPredicate](#utxorpc-v1alpha-query-UtxoPredicate) |  | Pattern to match UTxOs by. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |
| max_items | [int32](#int32) |  | The maximum number of items to return. |
| start_token | [string](#string) |  | The next_page_token value returned from a previous request, if any. |






<a name="utxorpc-v1alpha-query-SearchUtxosResponse"></a>

### SearchUtxosResponse
Response containing the UTxOs that match the requested addresses.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [AnyUtxoData](#utxorpc-v1alpha-query-AnyUtxoData) | repeated | List of UTxOs. |
| ledger_tip | [ChainPoint](#utxorpc-v1alpha-query-ChainPoint) |  | The chain point that represent the ledger current position. |
| next_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results. |






<a name="utxorpc-v1alpha-query-TxoRef"></a>

### TxoRef
Represents a reference to a transaction output


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | Tx hash. |
| index | [uint32](#uint32) |  | Output index. |






<a name="utxorpc-v1alpha-query-UtxoPredicate"></a>

### UtxoPredicate
Represents a simple utxo predicate that can composed to create more complex ones


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match | [AnyUtxoPattern](#utxorpc-v1alpha-query-AnyUtxoPattern) |  | Predicate is true if tx exhibits pattern. |
| not | [UtxoPredicate](#utxorpc-v1alpha-query-UtxoPredicate) | repeated | Predicate is true if tx doesn&#39;t exhibit pattern. |
| all_of | [UtxoPredicate](#utxorpc-v1alpha-query-UtxoPredicate) | repeated | Predicate is true if utxo exhibits all of the patterns. |
| any_of | [UtxoPredicate](#utxorpc-v1alpha-query-UtxoPredicate) | repeated | Predicate is true if utxo exhibits any of the patterns. |





 

 

 


<a name="utxorpc-v1alpha-query-QueryService"></a>

### QueryService
Service definition for querying the state of the chain.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ReadParams | [ReadParamsRequest](#utxorpc-v1alpha-query-ReadParamsRequest) | [ReadParamsResponse](#utxorpc-v1alpha-query-ReadParamsResponse) | Get overall chain state. |
| ReadUtxos | [ReadUtxosRequest](#utxorpc-v1alpha-query-ReadUtxosRequest) | [ReadUtxosResponse](#utxorpc-v1alpha-query-ReadUtxosResponse) | Read specific UTxOs by reference. |
| SearchUtxos | [SearchUtxosRequest](#utxorpc-v1alpha-query-SearchUtxosRequest) | [SearchUtxosResponse](#utxorpc-v1alpha-query-SearchUtxosResponse) | Search for UTxO based on a pattern. |
| ReadData | [ReadDataRequest](#utxorpc-v1alpha-query-ReadDataRequest) | [ReadDataResponse](#utxorpc-v1alpha-query-ReadDataResponse) | Read specific datum by hash |
| ReadTx | [ReadTxRequest](#utxorpc-v1alpha-query-ReadTxRequest) | [ReadTxResponse](#utxorpc-v1alpha-query-ReadTxResponse) | Get Txs by chain-specific criteria. |
| ReadChainConfig | [ReadChainConfigRequest](#utxorpc-v1alpha-query-ReadChainConfigRequest) | [ReadChainConfigResponse](#utxorpc-v1alpha-query-ReadChainConfigResponse) | Get the chain configuration |

 



<a name="utxorpc_v1alpha_submit_submit-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/v1alpha/submit/submit.proto



<a name="utxorpc-v1alpha-submit-AnyChainEval"></a>

### AnyChainEval
Report containing the result of evaluating a particular transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.v1alpha.cardano.TxEval](#utxorpc-v1alpha-cardano-TxEval) |  | A Cardano tx evaluation report. |






<a name="utxorpc-v1alpha-submit-AnyChainTx"></a>

### AnyChainTx
Represents a transaction from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| raw | [bytes](#bytes) |  | Raw transaction data. |






<a name="utxorpc-v1alpha-submit-AnyChainTxPattern"></a>

### AnyChainTxPattern
Represents a tx pattern from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.v1alpha.cardano.TxPattern](#utxorpc-v1alpha-cardano-TxPattern) |  | A Cardano tx pattern. |






<a name="utxorpc-v1alpha-submit-EvalTxRequest"></a>

### EvalTxRequest
Request to evaluate transactions without submitting.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [AnyChainTx](#utxorpc-v1alpha-submit-AnyChainTx) | repeated | List of transactions to evaluate. |






<a name="utxorpc-v1alpha-submit-EvalTxResponse"></a>

### EvalTxResponse
Response containing the reports form the transaction evaluation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| report | [AnyChainEval](#utxorpc-v1alpha-submit-AnyChainEval) | repeated |  |






<a name="utxorpc-v1alpha-submit-ReadMempoolRequest"></a>

### ReadMempoolRequest
Request to check the status of submitted transactions.






<a name="utxorpc-v1alpha-submit-ReadMempoolResponse"></a>

### ReadMempoolResponse
Response containing the stage of the submitted transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [TxInMempool](#utxorpc-v1alpha-submit-TxInMempool) | repeated | List of transaction currently on the mempool. |






<a name="utxorpc-v1alpha-submit-SubmitTxRequest"></a>

### SubmitTxRequest
Request to submit transactions to the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [AnyChainTx](#utxorpc-v1alpha-submit-AnyChainTx) | repeated | List of transactions to submit. |






<a name="utxorpc-v1alpha-submit-SubmitTxResponse"></a>

### SubmitTxResponse
Response containing references to the submitted transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) | repeated | List of transaction references. |






<a name="utxorpc-v1alpha-submit-TxInMempool"></a>

### TxInMempool



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) |  | The transaction reference. |
| native_bytes | [bytes](#bytes) |  | Original bytes as defined by the chain |
| stage | [Stage](#utxorpc-v1alpha-submit-Stage) |  | The current stage of the tx |
| cardano | [utxorpc.v1alpha.cardano.Tx](#utxorpc-v1alpha-cardano-Tx) |  | A Cardano transaction. |






<a name="utxorpc-v1alpha-submit-TxPredicate"></a>

### TxPredicate
Represents a simple tx predicate that can composed to create more complex ones


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match | [AnyChainTxPattern](#utxorpc-v1alpha-submit-AnyChainTxPattern) |  | Predicate is true if tx exhibits pattern. |
| not | [TxPredicate](#utxorpc-v1alpha-submit-TxPredicate) | repeated | Predicate is true if tx doesn&#39;t exhibit pattern. |
| all_of | [TxPredicate](#utxorpc-v1alpha-submit-TxPredicate) | repeated | Predicate is true if tx exhibits all of the patterns. |
| any_of | [TxPredicate](#utxorpc-v1alpha-submit-TxPredicate) | repeated | Predicate is true if tx exhibits any of the patterns. |






<a name="utxorpc-v1alpha-submit-WaitForTxRequest"></a>

### WaitForTxRequest
Request to wait for transactions to reach a certain stage.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) | repeated | List of transaction references to wait for. |






<a name="utxorpc-v1alpha-submit-WaitForTxResponse"></a>

### WaitForTxResponse
Response containing the transaction reference and stage once it has been reached.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) |  | Transaction reference. |
| stage | [Stage](#utxorpc-v1alpha-submit-Stage) |  | Stage reached by the transaction. |






<a name="utxorpc-v1alpha-submit-WatchMempoolRequest"></a>

### WatchMempoolRequest
Request to watch changes of specific mempool txs.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| predicate | [TxPredicate](#utxorpc-v1alpha-submit-TxPredicate) |  | A predicate to filter transactions by. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-v1alpha-submit-WatchMempoolResponse"></a>

### WatchMempoolResponse
Response that represents a change in a mempool tx.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [TxInMempool](#utxorpc-v1alpha-submit-TxInMempool) |  | The content and stage of the tx that has changed |





 


<a name="utxorpc-v1alpha-submit-Stage"></a>

### Stage
Enum representing the various stages of a transaction&#39;s lifecycle.

| Name | Number | Description |
| ---- | ------ | ----------- |
| STAGE_UNSPECIFIED | 0 | Unspecified stage. |
| STAGE_ACKNOWLEDGED | 1 | Transaction has been acknowledged by the node. |
| STAGE_MEMPOOL | 2 | Transaction is in the mempool. |
| STAGE_NETWORK | 3 | Transaction has been propagated across the network. |
| STAGE_CONFIRMED | 4 | Transaction has been confirmed on the blockchain. |


 

 


<a name="utxorpc-v1alpha-submit-SubmitService"></a>

### SubmitService
Service definition for submitting transactions and checking their status.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| EvalTx | [EvalTxRequest](#utxorpc-v1alpha-submit-EvalTxRequest) | [EvalTxResponse](#utxorpc-v1alpha-submit-EvalTxResponse) | Evaluates a transaction without submitting it. |
| SubmitTx | [SubmitTxRequest](#utxorpc-v1alpha-submit-SubmitTxRequest) | [SubmitTxResponse](#utxorpc-v1alpha-submit-SubmitTxResponse) | Submit transactions to the blockchain. |
| WaitForTx | [WaitForTxRequest](#utxorpc-v1alpha-submit-WaitForTxRequest) | [WaitForTxResponse](#utxorpc-v1alpha-submit-WaitForTxResponse) stream | Wait for transactions to reach a certain stage and stream the updates. |
| ReadMempool | [ReadMempoolRequest](#utxorpc-v1alpha-submit-ReadMempoolRequest) | [ReadMempoolResponse](#utxorpc-v1alpha-submit-ReadMempoolResponse) | Returns a point-in-time snapshot of the mempool. |
| WatchMempool | [WatchMempoolRequest](#utxorpc-v1alpha-submit-WatchMempoolRequest) | [WatchMempoolResponse](#utxorpc-v1alpha-submit-WatchMempoolResponse) stream | Stream transactions from the mempool matching the specified predicates. |

 



<a name="utxorpc_v1alpha_sync_sync-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/v1alpha/sync/sync.proto



<a name="utxorpc-v1alpha-sync-AnyChainBlock"></a>

### AnyChainBlock



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native_bytes | [bytes](#bytes) |  | Original bytes as defined by the chain |
| cardano | [utxorpc.v1alpha.cardano.Block](#utxorpc-v1alpha-cardano-Block) |  | A parsed Cardano block. |






<a name="utxorpc-v1alpha-sync-BlockRef"></a>

### BlockRef
Represents a reference to a specific block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [uint64](#uint64) |  | Height or slot number (depending on the blockchain) |
| hash | [bytes](#bytes) |  | Hash of the content of the block |






<a name="utxorpc-v1alpha-sync-DumpHistoryRequest"></a>

### DumpHistoryRequest
Request to dump the block history.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_token | [BlockRef](#utxorpc-v1alpha-sync-BlockRef) |  | Starting point for the block history dump. |
| max_items | [uint32](#uint32) |  | Maximum number of items to return. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-v1alpha-sync-DumpHistoryResponse"></a>

### DumpHistoryResponse
Response containing the dumped block history.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [AnyChainBlock](#utxorpc-v1alpha-sync-AnyChainBlock) | repeated | List of blocks in the history. |
| next_token | [BlockRef](#utxorpc-v1alpha-sync-BlockRef) |  | Next token for pagination. |






<a name="utxorpc-v1alpha-sync-FetchBlockRequest"></a>

### FetchBlockRequest
Request to fetch a block by its reference.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [BlockRef](#utxorpc-v1alpha-sync-BlockRef) | repeated | List of block references. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-v1alpha-sync-FetchBlockResponse"></a>

### FetchBlockResponse
Response containing the fetched blocks.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [AnyChainBlock](#utxorpc-v1alpha-sync-AnyChainBlock) | repeated | List of fetched blocks. |






<a name="utxorpc-v1alpha-sync-FollowTipRequest"></a>

### FollowTipRequest
Request to follow the tip of the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intersect | [BlockRef](#utxorpc-v1alpha-sync-BlockRef) | repeated | List of block references to find the intersection. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-v1alpha-sync-FollowTipResponse"></a>

### FollowTipResponse
Response containing the action to perform while following the tip.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply | [AnyChainBlock](#utxorpc-v1alpha-sync-AnyChainBlock) |  | Apply this block. |
| undo | [AnyChainBlock](#utxorpc-v1alpha-sync-AnyChainBlock) |  | Undo this block. |
| reset | [BlockRef](#utxorpc-v1alpha-sync-BlockRef) |  | Reset to this block reference. |






<a name="utxorpc-v1alpha-sync-ReadTipRequest"></a>

### ReadTipRequest
Request to read the current tip of the blockchain.






<a name="utxorpc-v1alpha-sync-ReadTipResponse"></a>

### ReadTipResponse
Response containing the current tip of the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tip | [BlockRef](#utxorpc-v1alpha-sync-BlockRef) |  | The current tip of the blockchain. |





 

 

 


<a name="utxorpc-v1alpha-sync-SyncService"></a>

### SyncService
Service definition for syncing chain data.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| FetchBlock | [FetchBlockRequest](#utxorpc-v1alpha-sync-FetchBlockRequest) | [FetchBlockResponse](#utxorpc-v1alpha-sync-FetchBlockResponse) | Fetch a block by its reference. |
| DumpHistory | [DumpHistoryRequest](#utxorpc-v1alpha-sync-DumpHistoryRequest) | [DumpHistoryResponse](#utxorpc-v1alpha-sync-DumpHistoryResponse) | Dump the block history. |
| FollowTip | [FollowTipRequest](#utxorpc-v1alpha-sync-FollowTipRequest) | [FollowTipResponse](#utxorpc-v1alpha-sync-FollowTipResponse) stream | Follow the tip of the blockchain. |
| ReadTip | [ReadTipRequest](#utxorpc-v1alpha-sync-ReadTipRequest) | [ReadTipResponse](#utxorpc-v1alpha-sync-ReadTipResponse) | Read the current tip of the blockchain. |

 



<a name="utxorpc_v1alpha_watch_watch-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/v1alpha/watch/watch.proto



<a name="utxorpc-v1alpha-watch-AnyChainTx"></a>

### AnyChainTx
Represents a transaction from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.v1alpha.cardano.Tx](#utxorpc-v1alpha-cardano-Tx) |  | A Cardano transaction. |






<a name="utxorpc-v1alpha-watch-AnyChainTxPattern"></a>

### AnyChainTxPattern
Represents a tx pattern from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.v1alpha.cardano.TxPattern](#utxorpc-v1alpha-cardano-TxPattern) |  | A Cardano tx pattern. |






<a name="utxorpc-v1alpha-watch-BlockRef"></a>

### BlockRef
Represents a reference to a specific block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [uint64](#uint64) |  | Height or slot number (depending on the blockchain) |
| hash | [bytes](#bytes) |  | Hash of the content of the block |






<a name="utxorpc-v1alpha-watch-TxPredicate"></a>

### TxPredicate
Represents a simple tx predicate that can composed to create more complex ones


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match | [AnyChainTxPattern](#utxorpc-v1alpha-watch-AnyChainTxPattern) |  | Predicate is true if tx exhibits pattern. |
| not | [TxPredicate](#utxorpc-v1alpha-watch-TxPredicate) | repeated | Predicate is true if tx doesn&#39;t exhibit pattern. |
| all_of | [TxPredicate](#utxorpc-v1alpha-watch-TxPredicate) | repeated | Predicate is true if tx exhibits all of the patterns. |
| any_of | [TxPredicate](#utxorpc-v1alpha-watch-TxPredicate) | repeated | Predicate is true if tx exhibits any of the patterns. |






<a name="utxorpc-v1alpha-watch-WatchTxRequest"></a>

### WatchTxRequest
Request to watch transactions from the chain based on a set of predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| predicate | [TxPredicate](#utxorpc-v1alpha-watch-TxPredicate) |  | Predicate to filter transactions by. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |
| intersect | [BlockRef](#utxorpc-v1alpha-watch-BlockRef) | repeated | List of block references to find the intersection. |






<a name="utxorpc-v1alpha-watch-WatchTxResponse"></a>

### WatchTxResponse
Response containing the matching chain transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply | [AnyChainTx](#utxorpc-v1alpha-watch-AnyChainTx) |  | Apply this transaction. |
| undo | [AnyChainTx](#utxorpc-v1alpha-watch-AnyChainTx) |  | Undo this transaction. |





 

 

 


<a name="utxorpc-v1alpha-watch-WatchService"></a>

### WatchService
Service definition for watching transactions based on predicates.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| WatchTx | [WatchTxRequest](#utxorpc-v1alpha-watch-WatchTxRequest) | [WatchTxResponse](#utxorpc-v1alpha-watch-WatchTxResponse) stream | Stream transactions from the chain matching the specified predicates. |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

