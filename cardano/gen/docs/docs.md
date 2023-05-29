# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/cardano/v1/cardano.proto](#utxorpc_cardano_v1_cardano-proto)
    - [Asset](#utxorpc-cardano-v1-Asset)
    - [AuxData](#utxorpc-cardano-v1-AuxData)
    - [BigInt](#utxorpc-cardano-v1-BigInt)
    - [Block](#utxorpc-cardano-v1-Block)
    - [BlockBody](#utxorpc-cardano-v1-BlockBody)
    - [BlockHeader](#utxorpc-cardano-v1-BlockHeader)
    - [BoundedBytes](#utxorpc-cardano-v1-BoundedBytes)
    - [Certificate](#utxorpc-cardano-v1-Certificate)
    - [Collateral](#utxorpc-cardano-v1-Collateral)
    - [Constr](#utxorpc-cardano-v1-Constr)
    - [Fraction](#utxorpc-cardano-v1-Fraction)
    - [GenesisKeyDelegationCert](#utxorpc-cardano-v1-GenesisKeyDelegationCert)
    - [Metadata](#utxorpc-cardano-v1-Metadata)
    - [Metadatum](#utxorpc-cardano-v1-Metadatum)
    - [MetadatumArray](#utxorpc-cardano-v1-MetadatumArray)
    - [MetadatumMap](#utxorpc-cardano-v1-MetadatumMap)
    - [MetadatumPair](#utxorpc-cardano-v1-MetadatumPair)
    - [MirCert](#utxorpc-cardano-v1-MirCert)
    - [MirTarget](#utxorpc-cardano-v1-MirTarget)
    - [Multiasset](#utxorpc-cardano-v1-Multiasset)
    - [NativeScript](#utxorpc-cardano-v1-NativeScript)
    - [NativeScriptList](#utxorpc-cardano-v1-NativeScriptList)
    - [PlutusData](#utxorpc-cardano-v1-PlutusData)
    - [PlutusDataArray](#utxorpc-cardano-v1-PlutusDataArray)
    - [PlutusDataMap](#utxorpc-cardano-v1-PlutusDataMap)
    - [PlutusDataPair](#utxorpc-cardano-v1-PlutusDataPair)
    - [PoolMetadata](#utxorpc-cardano-v1-PoolMetadata)
    - [PoolRegistrationCert](#utxorpc-cardano-v1-PoolRegistrationCert)
    - [PoolRetirementCert](#utxorpc-cardano-v1-PoolRetirementCert)
    - [Redeemer](#utxorpc-cardano-v1-Redeemer)
    - [Relay](#utxorpc-cardano-v1-Relay)
    - [Script](#utxorpc-cardano-v1-Script)
    - [ScriptNOfK](#utxorpc-cardano-v1-ScriptNOfK)
    - [StakeCredential](#utxorpc-cardano-v1-StakeCredential)
    - [StakeDelegationCert](#utxorpc-cardano-v1-StakeDelegationCert)
    - [Tx](#utxorpc-cardano-v1-Tx)
    - [TxInput](#utxorpc-cardano-v1-TxInput)
    - [TxOutput](#utxorpc-cardano-v1-TxOutput)
    - [TxValidity](#utxorpc-cardano-v1-TxValidity)
    - [VKeyWitness](#utxorpc-cardano-v1-VKeyWitness)
    - [Withdrawal](#utxorpc-cardano-v1-Withdrawal)
    - [WitnessSet](#utxorpc-cardano-v1-WitnessSet)
  
    - [MirSource](#utxorpc-cardano-v1-MirSource)
    - [RedeemerPurpose](#utxorpc-cardano-v1-RedeemerPurpose)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_cardano_v1_cardano-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/cardano/v1/cardano.proto



<a name="utxorpc-cardano-v1-Asset"></a>

### Asset
Represents a custom asset in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [bytes](#bytes) |  | Name of the custom asset. |
| quantity | [uint64](#uint64) |  | Quantity of the custom asset. |






<a name="utxorpc-cardano-v1-AuxData"></a>

### AuxData
Auxiliary data not directly tied to the validation process


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [Metadata](#utxorpc-cardano-v1-Metadata) | repeated | List of auxiliary metadata elements. |
| scripts | [Script](#utxorpc-cardano-v1-Script) | repeated | List of auxiliary scripts. |






<a name="utxorpc-cardano-v1-BigInt"></a>

### BigInt
Represents a big integer for Plutus data in Cardano.

Define the fields of BigInt based on your original Rust code






<a name="utxorpc-cardano-v1-Block"></a>

### Block
Represents a complete block, including header and body.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [BlockHeader](#utxorpc-cardano-v1-BlockHeader) |  | Block header. |
| body | [BlockBody](#utxorpc-cardano-v1-BlockBody) |  | Block body. |






<a name="utxorpc-cardano-v1-BlockBody"></a>

### BlockBody
Contains the transaction data for a block.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [Tx](#utxorpc-cardano-v1-Tx) | repeated | List of transactions. |






<a name="utxorpc-cardano-v1-BlockHeader"></a>

### BlockHeader
Contains the header information for a block.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [uint64](#uint64) |  | Slot number. |
| hash | [bytes](#bytes) |  | Block hash. |






<a name="utxorpc-cardano-v1-BoundedBytes"></a>

### BoundedBytes
Represents a bounded bytes for Plutus data in Cardano.

Define the fields of BoundedBytes based on your original Rust code






<a name="utxorpc-cardano-v1-Certificate"></a>

### Certificate
Represents a certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_registration | [StakeCredential](#utxorpc-cardano-v1-StakeCredential) |  | Stake registration certificate. |
| stake_deregistration | [StakeCredential](#utxorpc-cardano-v1-StakeCredential) |  | Stake deregistration certificate. |
| stake_delegation | [StakeDelegationCert](#utxorpc-cardano-v1-StakeDelegationCert) |  | Stake delegation certificate. |
| pool_registration | [PoolRegistrationCert](#utxorpc-cardano-v1-PoolRegistrationCert) |  | Pool registration certificate. |
| pool_retirement | [PoolRetirementCert](#utxorpc-cardano-v1-PoolRetirementCert) |  | Pool retirement certificate. |
| genesis_key_delegation | [GenesisKeyDelegationCert](#utxorpc-cardano-v1-GenesisKeyDelegationCert) |  | Genesis key delegation certificate. |
| mir_cert | [MirCert](#utxorpc-cardano-v1-MirCert) |  | Move instantaneous rewards certificate. |






<a name="utxorpc-cardano-v1-Collateral"></a>

### Collateral
Represents the collateral information for a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collateral | [TxInput](#utxorpc-cardano-v1-TxInput) | repeated | Collateral inputs for the transaction. |
| collateral_return | [TxOutput](#utxorpc-cardano-v1-TxOutput) |  | Collateral return in case of script failure. |
| total_collateral | [uint64](#uint64) |  | Total amount of collateral. |






<a name="utxorpc-cardano-v1-Constr"></a>

### Constr
Represents a constructor for Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tag | [uint32](#uint32) |  |  |
| any_constructor | [uint64](#uint64) |  |  |
| fields | [PlutusData](#utxorpc-cardano-v1-PlutusData) | repeated |  |






<a name="utxorpc-cardano-v1-Fraction"></a>

### Fraction
Represents a numeric fraction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| numerator | [int32](#int32) |  |  |
| denominator | [uint32](#uint32) |  |  |






<a name="utxorpc-cardano-v1-GenesisKeyDelegationCert"></a>

### GenesisKeyDelegationCert
Represents a genesis key delegation certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| genesis_hash | [bytes](#bytes) |  | Genesis hash. |
| genesis_delegate_hash | [bytes](#bytes) |  | Genesis delegate hash. |
| vrf_keyhash | [bytes](#bytes) |  | VRF key hash. |






<a name="utxorpc-cardano-v1-Metadata"></a>

### Metadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label | [uint64](#uint64) |  |  |
| value | [Metadatum](#utxorpc-cardano-v1-Metadatum) |  |  |






<a name="utxorpc-cardano-v1-Metadatum"></a>

### Metadatum



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| int | [int64](#int64) |  |  |
| bytes | [bytes](#bytes) |  |  |
| text | [string](#string) |  |  |
| array | [MetadatumArray](#utxorpc-cardano-v1-MetadatumArray) |  |  |
| map | [MetadatumMap](#utxorpc-cardano-v1-MetadatumMap) |  |  |






<a name="utxorpc-cardano-v1-MetadatumArray"></a>

### MetadatumArray



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [Metadatum](#utxorpc-cardano-v1-Metadatum) | repeated |  |






<a name="utxorpc-cardano-v1-MetadatumMap"></a>

### MetadatumMap



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pairs | [MetadatumPair](#utxorpc-cardano-v1-MetadatumPair) | repeated |  |






<a name="utxorpc-cardano-v1-MetadatumPair"></a>

### MetadatumPair



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [Metadatum](#utxorpc-cardano-v1-Metadatum) |  |  |
| value | [Metadatum](#utxorpc-cardano-v1-Metadatum) |  |  |






<a name="utxorpc-cardano-v1-MirCert"></a>

### MirCert
Represents a move instantaneous reward certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| from | [MirSource](#utxorpc-cardano-v1-MirSource) |  |  |
| to | [MirTarget](#utxorpc-cardano-v1-MirTarget) | repeated |  |
| other_pot | [uint64](#uint64) |  |  |






<a name="utxorpc-cardano-v1-MirTarget"></a>

### MirTarget



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-cardano-v1-StakeCredential) |  |  |
| delta_coin | [int64](#int64) |  |  |






<a name="utxorpc-cardano-v1-Multiasset"></a>

### Multiasset
Represents a multi-asset group in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| policy_id | [bytes](#bytes) |  | Policy ID governing the custom assets. |
| assets | [Asset](#utxorpc-cardano-v1-Asset) | repeated | List of custom assets. |






<a name="utxorpc-cardano-v1-NativeScript"></a>

### NativeScript
Represents a native script in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| script_pubkey | [bytes](#bytes) |  | Script based on an address key hash. |
| script_all | [NativeScriptList](#utxorpc-cardano-v1-NativeScriptList) |  | Script that requires all nested scripts to be satisfied. |
| script_any | [NativeScriptList](#utxorpc-cardano-v1-NativeScriptList) |  | Script that requires any of the nested scripts to be satisfied. |
| script_n_of_k | [ScriptNOfK](#utxorpc-cardano-v1-ScriptNOfK) |  | Script that requires k out of n nested scripts to be satisfied. |
| invalid_before | [uint64](#uint64) |  | Slot number before which the script is invalid. |
| invalid_hereafter | [uint64](#uint64) |  | Slot number after which the script is invalid. |






<a name="utxorpc-cardano-v1-NativeScriptList"></a>

### NativeScriptList
Represents a list of native scripts.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [NativeScript](#utxorpc-cardano-v1-NativeScript) | repeated | List of native scripts. |






<a name="utxorpc-cardano-v1-PlutusData"></a>

### PlutusData
Represents a Plutus data item in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| constr | [Constr](#utxorpc-cardano-v1-Constr) |  | Constructor. |
| map | [PlutusDataMap](#utxorpc-cardano-v1-PlutusDataMap) |  | Map of Plutus data. |
| big_int | [BigInt](#utxorpc-cardano-v1-BigInt) |  | Big integer. |
| bounded_bytes | [BoundedBytes](#utxorpc-cardano-v1-BoundedBytes) |  | Bounded bytes. |
| array | [PlutusDataArray](#utxorpc-cardano-v1-PlutusDataArray) |  | Array of Plutus data. |






<a name="utxorpc-cardano-v1-PlutusDataArray"></a>

### PlutusDataArray
Represents an array of Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [PlutusData](#utxorpc-cardano-v1-PlutusData) | repeated | List of Plutus data items. |






<a name="utxorpc-cardano-v1-PlutusDataMap"></a>

### PlutusDataMap
Represents a map of Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pairs | [PlutusDataPair](#utxorpc-cardano-v1-PlutusDataPair) | repeated | List of key-value pairs. |






<a name="utxorpc-cardano-v1-PlutusDataPair"></a>

### PlutusDataPair
Represents a key-value pair for Plutus data in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [PlutusData](#utxorpc-cardano-v1-PlutusData) |  | Key of the pair. |
| value | [PlutusData](#utxorpc-cardano-v1-PlutusData) |  | Value of the pair. |






<a name="utxorpc-cardano-v1-PoolMetadata"></a>

### PoolMetadata
Represents pool metadata in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  |  |
| hash | [bytes](#bytes) |  |  |






<a name="utxorpc-cardano-v1-PoolRegistrationCert"></a>

### PoolRegistrationCert
Represents a pool registration certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operator | [bytes](#bytes) |  | Operator key hash. |
| vrf_keyhash | [bytes](#bytes) |  | VRF key hash. |
| pledge | [uint64](#uint64) |  | Pledge amount. |
| cost | [uint64](#uint64) |  | Pool cost. |
| margin | [Fraction](#utxorpc-cardano-v1-Fraction) |  | Pool margin. |
| reward_account | [bytes](#bytes) |  | Reward account. |
| pool_owners | [bytes](#bytes) | repeated | List of pool owner key hashes. |
| relays | [Relay](#utxorpc-cardano-v1-Relay) | repeated | List of relays. |
| pool_metadata | [PoolMetadata](#utxorpc-cardano-v1-PoolMetadata) |  | Pool metadata. |






<a name="utxorpc-cardano-v1-PoolRetirementCert"></a>

### PoolRetirementCert
Represents a pool retirement certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pool_keyhash | [bytes](#bytes) |  | Pool key hash. |
| epoch | [uint64](#uint64) |  | Retirement epoch. |






<a name="utxorpc-cardano-v1-Redeemer"></a>

### Redeemer
Redeemer information for a Plutus script.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| purpose | [RedeemerPurpose](#utxorpc-cardano-v1-RedeemerPurpose) |  | Purpose of the redeemer. |
| datum | [PlutusData](#utxorpc-cardano-v1-PlutusData) |  | Plutus data associated with the redeemer. |






<a name="utxorpc-cardano-v1-Relay"></a>

### Relay
Represents a relay in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ip_v4 | [bytes](#bytes) |  |  |
| ip_v6 | [bytes](#bytes) |  |  |
| dns_name | [string](#string) |  |  |
| port | [uint32](#uint32) |  |  |






<a name="utxorpc-cardano-v1-Script"></a>

### Script
Represents a script in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| native | [NativeScript](#utxorpc-cardano-v1-NativeScript) |  | Native script. |
| plutus_v1 | [bytes](#bytes) |  | Plutus V1 script. |
| plutus_v2 | [bytes](#bytes) |  | Plutus V2 script. |






<a name="utxorpc-cardano-v1-ScriptNOfK"></a>

### ScriptNOfK
Represents a &#34;k out of n&#34; native script.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| k | [uint32](#uint32) |  | The number of required satisfied scripts. |
| scripts | [NativeScript](#utxorpc-cardano-v1-NativeScript) | repeated | List of native scripts. |






<a name="utxorpc-cardano-v1-StakeCredential"></a>

### StakeCredential
Represents a stake credential in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addr_key_hash | [bytes](#bytes) |  | Address key hash. |
| script_hash | [bytes](#bytes) |  | Script hash. |






<a name="utxorpc-cardano-v1-StakeDelegationCert"></a>

### StakeDelegationCert
Represents a stake delegation certificate in Cardano.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stake_credential | [StakeCredential](#utxorpc-cardano-v1-StakeCredential) |  | Stake credential. |
| pool_keyhash | [bytes](#bytes) |  | Pool key hash. |






<a name="utxorpc-cardano-v1-Tx"></a>

### Tx
Represents a transaction in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inputs | [TxInput](#utxorpc-cardano-v1-TxInput) | repeated | List of transaction inputs |
| outputs | [TxOutput](#utxorpc-cardano-v1-TxOutput) | repeated | List of transaction outputs |
| certificates | [Certificate](#utxorpc-cardano-v1-Certificate) | repeated | List of certificates |
| withdrawals | [Withdrawal](#utxorpc-cardano-v1-Withdrawal) | repeated | List of withdrawals |
| mint | [Multiasset](#utxorpc-cardano-v1-Multiasset) | repeated | List of minted custom assets |
| reference_inputs | [TxInput](#utxorpc-cardano-v1-TxInput) | repeated | List of reference inputs |
| witnesses | [WitnessSet](#utxorpc-cardano-v1-WitnessSet) |  | Witnesses that validte the transaction |
| collateral | [Collateral](#utxorpc-cardano-v1-Collateral) |  | Collateral details in case of failed transaction |
| fee | [uint64](#uint64) |  | Transaction fee in ADA |
| validity | [TxValidity](#utxorpc-cardano-v1-TxValidity) |  | Validity interval of the transaction |
| successful | [bool](#bool) |  | Flag indicating whether the transaction was successful |
| auxiliary | [AuxData](#utxorpc-cardano-v1-AuxData) |  | Auxiliary data not directly tied to the validation process |






<a name="utxorpc-cardano-v1-TxInput"></a>

### TxInput
Represents a transaction input in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_hash | [bytes](#bytes) |  | Hash of the previous transaction. |
| output_index | [uint32](#uint32) |  | Index of the output in the previous transaction. |
| as_output | [TxOutput](#utxorpc-cardano-v1-TxOutput) |  | Content of the input represented as output of the related transaction |
| redeemer | [Redeemer](#utxorpc-cardano-v1-Redeemer) |  | Redeemer for the Plutus script. |






<a name="utxorpc-cardano-v1-TxOutput"></a>

### TxOutput
Represents a transaction output in the Cardano blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [bytes](#bytes) |  | Address receiving the output. |
| coin | [uint64](#uint64) |  | Amount of ADA in the output. |
| assets | [Multiasset](#utxorpc-cardano-v1-Multiasset) | repeated | Additional native (non-ADA) assets in the output. |
| datum | [PlutusData](#utxorpc-cardano-v1-PlutusData) |  | Plutus data associated with the output. |
| datum_hash | [bytes](#bytes) |  | Hash of the Plutus data. |
| script | [Script](#utxorpc-cardano-v1-Script) |  | Script associated with the output. |






<a name="utxorpc-cardano-v1-TxValidity"></a>

### TxValidity
Represents the validity interval of a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [uint64](#uint64) |  | Start of the validity interval. |
| ttl | [uint64](#uint64) |  | End of the validity interval (TTL: Time to Live). |






<a name="utxorpc-cardano-v1-VKeyWitness"></a>

### VKeyWitness
Represents a VKey witness used to sign a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vkey | [bytes](#bytes) |  | Verification key. |
| signature | [bytes](#bytes) |  | Signature generated using the associated private key. |






<a name="utxorpc-cardano-v1-Withdrawal"></a>

### Withdrawal
Represents a withdrawal from a reward account.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reward_account | [bytes](#bytes) |  | Address of the reward account. |
| coin | [uint64](#uint64) |  | Amount of ADA withdrawn. |






<a name="utxorpc-cardano-v1-WitnessSet"></a>

### WitnessSet
Represents a set of witnesses that validate a transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vkeywitness | [VKeyWitness](#utxorpc-cardano-v1-VKeyWitness) | repeated | List of VKey witnesses. |
| script | [Script](#utxorpc-cardano-v1-Script) | repeated | List of scripts. |
| plutus_datums | [PlutusData](#utxorpc-cardano-v1-PlutusData) | repeated | List of Plutus data elements associated with the transaction. |





 


<a name="utxorpc-cardano-v1-MirSource"></a>

### MirSource


| Name | Number | Description |
| ---- | ------ | ----------- |
| MIR_SOURCE_UNSPECIFIED | 0 |  |
| MIR_SOURCE_RESERVES | 1 |  |
| MIR_SOURCE_TREASURY | 2 |  |



<a name="utxorpc-cardano-v1-RedeemerPurpose"></a>

### RedeemerPurpose
Purpose of the redeemer in a transaction.

| Name | Number | Description |
| ---- | ------ | ----------- |
| REDEEMER_PURPOSE_UNSPECIFIED | 0 |  |
| REDEEMER_PURPOSE_SPEND | 1 |  |
| REDEEMER_PURPOSE_MINT | 2 |  |
| REDEEMER_PURPOSE_CERT | 3 |  |
| REDEEMER_PURPOSE_REWARD | 4 |  |


 

 

 



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

