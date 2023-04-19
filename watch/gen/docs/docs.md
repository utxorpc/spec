# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/watch/v1/watch.proto](#utxorpc_watch_v1_watch-proto)
    - [AddressPredicate](#utxorpc-watch-v1-AddressPredicate)
    - [AnyChainTx](#utxorpc-watch-v1-AnyChainTx)
    - [AnyPredicate](#utxorpc-watch-v1-AnyPredicate)
    - [AssetPredicate](#utxorpc-watch-v1-AssetPredicate)
    - [DatumPredicate](#utxorpc-watch-v1-DatumPredicate)
    - [UtxoPredicate](#utxorpc-watch-v1-UtxoPredicate)
    - [WatchTxRequest](#utxorpc-watch-v1-WatchTxRequest)
    - [WatchTxResponse](#utxorpc-watch-v1-WatchTxResponse)
  
    - [TxWatchService](#utxorpc-watch-v1-TxWatchService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_watch_v1_watch-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/watch/v1/watch.proto



<a name="utxorpc-watch-v1-AddressPredicate"></a>

### AddressPredicate
Predicate to match transactions based on addresses.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match_source | [bytes](#bytes) |  | Match transactions with the specified source address. |
| match_target | [bytes](#bytes) |  | Match transactions with the specified target address. |
| match_any | [bytes](#bytes) |  | Match transactions with the specified address as either source or target. |






<a name="utxorpc-watch-v1-AnyChainTx"></a>

### AnyChainTx
Represents a transaction from any supported blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cardano | [utxorpc.cardano.v1.Tx](#utxorpc-cardano-v1-Tx) |  | A Cardano transaction. |






<a name="utxorpc-watch-v1-AnyPredicate"></a>

### AnyPredicate
Predicate to match transactions based on any of the specified types.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [AddressPredicate](#utxorpc-watch-v1-AddressPredicate) |  | Address-based predicate. |
| asset | [AssetPredicate](#utxorpc-watch-v1-AssetPredicate) |  | Asset-based predicate. |
| utxo | [UtxoPredicate](#utxorpc-watch-v1-UtxoPredicate) |  | UTXO-based predicate. |
| datum | [DatumPredicate](#utxorpc-watch-v1-DatumPredicate) |  | Datum-based predicate. |






<a name="utxorpc-watch-v1-AssetPredicate"></a>

### AssetPredicate
Predicate to match transactions based on assets.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match_policy | [bytes](#bytes) |  | Match transactions with the specified asset policy. |
| match_name | [bytes](#bytes) |  | Match transactions with the specified asset name. |






<a name="utxorpc-watch-v1-DatumPredicate"></a>

### DatumPredicate
Predicate to match transactions based on datums.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match_hash | [bytes](#bytes) |  | Match transactions with the specified datum hash. |






<a name="utxorpc-watch-v1-UtxoPredicate"></a>

### UtxoPredicate
Predicate to match transactions based on UTXOs.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| match_hash | [bytes](#bytes) |  | Match transactions with the specified UTXO hash. |
| match_index | [uint32](#uint32) |  | Match transactions with the specified UTXO index. |






<a name="utxorpc-watch-v1-WatchTxRequest"></a>

### WatchTxRequest
Request to watch transactions based on a set of predicates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| predicate | [AnyPredicate](#utxorpc-watch-v1-AnyPredicate) | repeated | List of predicates to filter transactions. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-watch-v1-WatchTxResponse"></a>

### WatchTxResponse
Response containing the matching transactions.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply | [AnyChainTx](#utxorpc-watch-v1-AnyChainTx) |  | Apply this transaction. |
| undo | [AnyChainTx](#utxorpc-watch-v1-AnyChainTx) |  | Undo this transaction. |





 

 

 


<a name="utxorpc-watch-v1-TxWatchService"></a>

### TxWatchService
Service definition for watching transactions based on predicates.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| WatchTx | [WatchTxRequest](#utxorpc-watch-v1-WatchTxRequest) | [WatchTxResponse](#utxorpc-watch-v1-WatchTxResponse) stream | Stream transactions matching the specified predicates. |

 



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

