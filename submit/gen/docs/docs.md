# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/submit/v1/submit.proto](#utxorpc_submit_v1_submit-proto)
    - [AnyChainTx](#utxorpc-submit-v1-AnyChainTx)
    - [CheckRequest](#utxorpc-submit-v1-CheckRequest)
    - [CheckResponse](#utxorpc-submit-v1-CheckResponse)
    - [SubmitRequest](#utxorpc-submit-v1-SubmitRequest)
    - [SubmitResponse](#utxorpc-submit-v1-SubmitResponse)
    - [WaitForRequest](#utxorpc-submit-v1-WaitForRequest)
    - [WaitForResponse](#utxorpc-submit-v1-WaitForResponse)
  
    - [Stage](#utxorpc-submit-v1-Stage)
  
    - [SubmitService](#utxorpc-submit-v1-SubmitService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_submit_v1_submit-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/submit/v1/submit.proto



<a name="utxorpc-submit-v1-AnyChainTx"></a>

### AnyChainTx
Represents a transaction from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| raw | [bytes](#bytes) |  | Raw transaction data. |






<a name="utxorpc-submit-v1-CheckRequest"></a>

### CheckRequest
Request to check the status of submitted transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) | repeated | List of transaction references to check. |






<a name="utxorpc-submit-v1-CheckResponse"></a>

### CheckResponse
Response containing the stage of the submitted transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stage | [Stage](#utxorpc-submit-v1-Stage) | repeated | List of stages corresponding to the transaction references. |






<a name="utxorpc-submit-v1-SubmitRequest"></a>

### SubmitRequest
Request to submit transactions to the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx | [AnyChainTx](#utxorpc-submit-v1-AnyChainTx) | repeated | List of transactions to submit. |






<a name="utxorpc-submit-v1-SubmitResponse"></a>

### SubmitResponse
Response containing references to the submitted transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) | repeated | List of transaction references. |






<a name="utxorpc-submit-v1-WaitForRequest"></a>

### WaitForRequest
Request to wait for transactions to reach a certain stage.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) | repeated | List of transaction references to wait for. |






<a name="utxorpc-submit-v1-WaitForResponse"></a>

### WaitForResponse
Response containing the transaction reference and stage once it has been reached.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [bytes](#bytes) |  | Transaction reference. |
| stage | [Stage](#utxorpc-submit-v1-Stage) |  | Stage reached by the transaction. |





 


<a name="utxorpc-submit-v1-Stage"></a>

### Stage
Enum representing the various stages of a transaction&#39;s lifecycle.

| Name | Number | Description |
| ---- | ------ | ----------- |
| STAGE_UNSPECIFIED | 0 | Unspecified stage. |
| STAGE_ACKNOWLEDGED | 1 | Transaction has been acknowledged by the node. |
| STAGE_MEMPOOL | 2 | Transaction is in the mempool. |
| STAGE_NETWORK | 3 | Transaction has been propagated across the network. |
| STAGE_CONFIRMED | 4 | Transaction has been confirmed on the blockchain. |


 

 


<a name="utxorpc-submit-v1-SubmitService"></a>

### SubmitService
Service definition for submitting transactions and checking their status.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Submit | [SubmitRequest](#utxorpc-submit-v1-SubmitRequest) | [SubmitResponse](#utxorpc-submit-v1-SubmitResponse) | Submit transactions to the blockchain. |
| Check | [CheckRequest](#utxorpc-submit-v1-CheckRequest) | [CheckResponse](#utxorpc-submit-v1-CheckResponse) | Check the status of submitted transactions. |
| WaitFor | [WaitForRequest](#utxorpc-submit-v1-WaitForRequest) | [WaitForResponse](#utxorpc-submit-v1-WaitForResponse) stream | Wait for transactions to reach a certain stage and stream the updates. |

 



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

