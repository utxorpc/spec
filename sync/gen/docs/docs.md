# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [utxorpc/sync/v1/sync.proto](#utxorpc_sync_v1_sync-proto)
    - [AnyChainBlock](#utxorpc-sync-v1-AnyChainBlock)
    - [BlockRef](#utxorpc-sync-v1-BlockRef)
    - [DumpHistoryRequest](#utxorpc-sync-v1-DumpHistoryRequest)
    - [DumpHistoryResponse](#utxorpc-sync-v1-DumpHistoryResponse)
    - [FetchBlockRequest](#utxorpc-sync-v1-FetchBlockRequest)
    - [FetchBlockResponse](#utxorpc-sync-v1-FetchBlockResponse)
    - [FollowTipRequest](#utxorpc-sync-v1-FollowTipRequest)
    - [FollowTipResponse](#utxorpc-sync-v1-FollowTipResponse)
  
    - [ChainSyncService](#utxorpc-sync-v1-ChainSyncService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="utxorpc_sync_v1_sync-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## utxorpc/sync/v1/sync.proto



<a name="utxorpc-sync-v1-AnyChainBlock"></a>

### AnyChainBlock



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| raw | [bytes](#bytes) |  | Original bytes for a raw block |
| cardano | [utxorpc.cardano.v1.Block](#utxorpc-cardano-v1-Block) |  | A parsed Cardano block. |






<a name="utxorpc-sync-v1-BlockRef"></a>

### BlockRef
Represents a reference to a specific block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| slot | [uint64](#uint64) |  | Slot number of the block |
| height | [uint64](#uint64) |  | Height of the block |
| hash | [bytes](#bytes) |  | Hash of the content of the block |






<a name="utxorpc-sync-v1-DumpHistoryRequest"></a>

### DumpHistoryRequest
Request to dump the block history.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_token | [BlockRef](#utxorpc-sync-v1-BlockRef) |  | Starting point for the block history dump. |
| max_items | [uint32](#uint32) |  | Maximum number of items to return. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-sync-v1-DumpHistoryResponse"></a>

### DumpHistoryResponse
Response containing the dumped block history.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [AnyChainBlock](#utxorpc-sync-v1-AnyChainBlock) | repeated | List of blocks in the history. |
| next_token | [BlockRef](#utxorpc-sync-v1-BlockRef) |  | Next token for pagination. |






<a name="utxorpc-sync-v1-FetchBlockRequest"></a>

### FetchBlockRequest
Request to fetch a block by its reference.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [BlockRef](#utxorpc-sync-v1-BlockRef) | repeated | List of block references. |
| field_mask | [google.protobuf.FieldMask](#google-protobuf-FieldMask) |  | Field mask to selectively return fields. |






<a name="utxorpc-sync-v1-FetchBlockResponse"></a>

### FetchBlockResponse
Response containing the fetched blocks.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [AnyChainBlock](#utxorpc-sync-v1-AnyChainBlock) | repeated | List of fetched blocks. |






<a name="utxorpc-sync-v1-FollowTipRequest"></a>

### FollowTipRequest
Request to follow the tip of the blockchain.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| intersect | [BlockRef](#utxorpc-sync-v1-BlockRef) | repeated | List of block references to find the intersection. |






<a name="utxorpc-sync-v1-FollowTipResponse"></a>

### FollowTipResponse
Response containing the action to perform while following the tip.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply | [AnyChainBlock](#utxorpc-sync-v1-AnyChainBlock) |  | Apply this block. |
| undo | [AnyChainBlock](#utxorpc-sync-v1-AnyChainBlock) |  | Undo this block. |
| reset | [BlockRef](#utxorpc-sync-v1-BlockRef) |  | Reset to this block reference. |





 

 

 


<a name="utxorpc-sync-v1-ChainSyncService"></a>

### ChainSyncService
Service definition for syncing chain data.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| FetchBlock | [FetchBlockRequest](#utxorpc-sync-v1-FetchBlockRequest) | [FetchBlockResponse](#utxorpc-sync-v1-FetchBlockResponse) | Fetch a block by its reference. |
| DumpHistory | [DumpHistoryRequest](#utxorpc-sync-v1-DumpHistoryRequest) | [DumpHistoryResponse](#utxorpc-sync-v1-DumpHistoryResponse) | Dump the block history. |
| FollowTip | [FollowTipRequest](#utxorpc-sync-v1-FollowTipRequest) | [FollowTipResponse](#utxorpc-sync-v1-FollowTipResponse) stream | Follow the tip of the blockchain. |

 



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

