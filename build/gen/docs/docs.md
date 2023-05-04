# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/build/v1/build.proto](#utxorpc_build_v1_build-proto)
    - [AnyChainUtxo](#utxorpc-build-v1-AnyChainUtxo)
    - [ChainParam](#utxorpc-build-v1-ChainParam)
    - [ChainPoint](#utxorpc-build-v1-ChainPoint)
    - [GetChainParamRequest](#utxorpc-build-v1-GetChainParamRequest)
    - [GetChainParamResponse](#utxorpc-build-v1-GetChainParamResponse)
    - [GetChainTipRequest](#utxorpc-build-v1-GetChainTipRequest)
    - [GetChainTipResponse](#utxorpc-build-v1-GetChainTipResponse)
    - [GetUtxoByAddressRequest](#utxorpc-build-v1-GetUtxoByAddressRequest)
    - [GetUtxoByAddressResponse](#utxorpc-build-v1-GetUtxoByAddressResponse)
    - [GetUtxoByRefRequest](#utxorpc-build-v1-GetUtxoByRefRequest)
    - [GetUtxoByRefResponse](#utxorpc-build-v1-GetUtxoByRefResponse)
    - [HoldUtxoRequest](#utxorpc-build-v1-HoldUtxoRequest)
    - [HoldUtxoResponse](#utxorpc-build-v1-HoldUtxoResponse)
    - [UtxoRef](#utxorpc-build-v1-UtxoRef)
  
    - [LedgerStateService](#utxorpc-build-v1-LedgerStateService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_build_v1_build-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/build/v1/build.proto



<a name="utxorpc-build-v1-AnyChainUtxo"></a>

### AnyChainUtxo
An evenlope that holds an UTxO from any of compatible chains


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.cardano.v1.TxOutput](#utxorpc-cardano-v1-TxOutput) |  |  |






<a name="utxorpc-build-v1-ChainParam"></a>

### ChainParam
Represents a key-value pair for a chain parameter.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  | Parameter key. |
| value | [bytes](#bytes) |  | Parameter value. |






<a name="utxorpc-build-v1-ChainPoint"></a>

### ChainPoint
Represents a specific point in the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [uint64](#uint64) |  | Slot number. |
| height | [uint64](#uint64) |  | Block height. |
| hash | [bytes](#bytes) |  | Block hash. |






<a name="utxorpc-build-v1-GetChainParamRequest"></a>

### GetChainParamRequest
Request to get specific chain parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| param | [string](#string) | repeated | List of requested parameters. |






<a name="utxorpc-build-v1-GetChainParamResponse"></a>

### GetChainParamResponse
Response containing the requested chain parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| param | [ChainParam](#utxorpc-build-v1-ChainParam) | repeated | List of requested chain parameters. |






<a name="utxorpc-build-v1-GetChainTipRequest"></a>

### GetChainTipRequest
Request to get the current chain tip.






<a name="utxorpc-build-v1-GetChainTipResponse"></a>

### GetChainTipResponse
Response containing the current chain tip.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tip | [ChainPoint](#utxorpc-build-v1-ChainPoint) |  | Current chain tip. |






<a name="utxorpc-build-v1-GetUtxoByAddressRequest"></a>

### GetUtxoByAddressRequest
Request to get UTxOs by their associated addresses.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [bytes](#bytes) | repeated | List of addresses to query. |
| acquire_point | [ChainPoint](#utxorpc-build-v1-ChainPoint) |  | Point in the chain to query from. |






<a name="utxorpc-build-v1-GetUtxoByAddressResponse"></a>

### GetUtxoByAddressResponse
Response containing the UTxOs associated with the requested addresses.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [AnyChainUtxo](#utxorpc-build-v1-AnyChainUtxo) | repeated | List of UTxOs. |
| next_token | [string](#string) |  | Token for pagination. |






<a name="utxorpc-build-v1-GetUtxoByRefRequest"></a>

### GetUtxoByRefRequest
Request to get UTxOs by their references.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [UtxoRef](#utxorpc-build-v1-UtxoRef) | repeated | List of UTxO references to query. |
| acquire_point | [ChainPoint](#utxorpc-build-v1-ChainPoint) |  | Point in the chain to query from. |






<a name="utxorpc-build-v1-GetUtxoByRefResponse"></a>

### GetUtxoByRefResponse
Response containing the UTxOs associated with the requested references.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [AnyChainUtxo](#utxorpc-build-v1-AnyChainUtxo) | repeated | List of UTxOs. |
| next_token | [string](#string) |  | Token for pagination. |






<a name="utxorpc-build-v1-HoldUtxoRequest"></a>

### HoldUtxoRequest
Request to hold UTxOs.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| refs | [UtxoRef](#utxorpc-build-v1-UtxoRef) | repeated | List of UTxO references to hold. |






<a name="utxorpc-build-v1-HoldUtxoResponse"></a>

### HoldUtxoResponse
Response containing information about lost UTxOs.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| lost | [UtxoRef](#utxorpc-build-v1-UtxoRef) | repeated | List of lost UTxO references. |






<a name="utxorpc-build-v1-UtxoRef"></a>

### UtxoRef
Represents a reference to a UTxO.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | Transaction hash. |
| index | [uint32](#uint32) |  | Output index. |





 

 

 


<a name="utxorpc-build-v1-LedgerStateService"></a>

### LedgerStateService
Service definition for querying the state of the ledger.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetChainTip | [GetChainTipRequest](#utxorpc-build-v1-GetChainTipRequest) | [GetChainTipResponse](#utxorpc-build-v1-GetChainTipResponse) | Get the current chain tip. |
| GetChainParam | [GetChainParamRequest](#utxorpc-build-v1-GetChainParamRequest) | [GetChainParamResponse](#utxorpc-build-v1-GetChainParamResponse) | Get specific chain parameters. |
| GetUtxoByAddress | [GetUtxoByAddressRequest](#utxorpc-build-v1-GetUtxoByAddressRequest) | [GetUtxoByAddressResponse](#utxorpc-build-v1-GetUtxoByAddressResponse) | Get UTxOs by their associated addresses. |
| GetUtxoByRef | [GetUtxoByRefRequest](#utxorpc-build-v1-GetUtxoByRefRequest) | [GetUtxoByRefResponse](#utxorpc-build-v1-GetUtxoByRefResponse) | Get UTxOs by their references. |
| HoldUtxo | [HoldUtxoRequest](#utxorpc-build-v1-HoldUtxoRequest) | [HoldUtxoResponse](#utxorpc-build-v1-HoldUtxoResponse) stream | Hold UTxOs and receive updates about lost UTxOs |

 



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

