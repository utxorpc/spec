# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/watch/v1/watch.proto](#utxorpc_watch_v1_watch-proto)
    - [AnyChainTx](#utxorpc-watch-v1-AnyChainTx)
    - [AnyChainTxPattern](#utxorpc-watch-v1-AnyChainTxPattern)
    - [TxPredicate](#utxorpc-watch-v1-TxPredicate)
    - [WatchTxRequest](#utxorpc-watch-v1-WatchTxRequest)
    - [WatchTxResponse](#utxorpc-watch-v1-WatchTxResponse)
  
    - [WatchService](#utxorpc-watch-v1-WatchService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_watch_v1_watch-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/watch/v1/watch.proto



<a name="utxorpc-watch-v1-AnyChainTx"></a>

### AnyChainTx
Represents a transaction from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.cardano.v1.Tx](#utxorpc-cardano-v1-Tx) |  | A Cardano transaction. |






<a name="utxorpc-watch-v1-AnyChainTxPattern"></a>

### AnyChainTxPattern
Represents a tx pattern from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.cardano.v1.TxPattern](#utxorpc-cardano-v1-TxPattern) |  | A Cardano tx pattern. |






<a name="utxorpc-watch-v1-TxPredicate"></a>

### TxPredicate
Represents a simple tx predicate that can composed to create more complext ones


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match | [AnyChainTxPattern](#utxorpc-watch-v1-AnyChainTxPattern) |  | Predicate is true if tx exhibits pattern. |
| not | [TxPredicate](#utxorpc-watch-v1-TxPredicate) | repeated | Predicate is true if tx doesn&#39;t exhibit pattern. |
| all_of | [TxPredicate](#utxorpc-watch-v1-TxPredicate) | repeated | Predicate is true if tx exhibits all of the patterns. |
| any_of | [TxPredicate](#utxorpc-watch-v1-TxPredicate) | repeated | Predicate is true if tx exhibits any of the patterns. |






<a name="utxorpc-watch-v1-WatchTxRequest"></a>

### WatchTxRequest
Request to watch transactions from the chain based on a set of predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| predicate | [TxPredicate](#utxorpc-watch-v1-TxPredicate) |  | Predicate to filter transactions by. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-watch-v1-WatchTxResponse"></a>

### WatchTxResponse
Response containing the matching chain transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply | [AnyChainTx](#utxorpc-watch-v1-AnyChainTx) |  | Apply this transaction. |
| undo | [AnyChainTx](#utxorpc-watch-v1-AnyChainTx) |  | Undo this transaction. |





 

 

 


<a name="utxorpc-watch-v1-WatchService"></a>

### WatchService
Service definition for watching transactions based on predicates.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| WatchTx | [WatchTxRequest](#utxorpc-watch-v1-WatchTxRequest) | [WatchTxResponse](#utxorpc-watch-v1-WatchTxResponse) stream | Stream transactions from the chain matching the specified predicates. |

 



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

