/// A consistent view of the state of the ledger

// @generated by protoc-gen-es v1.7.2 with parameter "target=ts,import_extension=.ts"
// @generated from file utxorpc/v1/build/build.proto (package utxorpc.v1.build, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import type { BinaryReadOptions, FieldList, JsonReadOptions, JsonValue, PartialMessage, PlainMessage } from "@bufbuild/protobuf";
import { Message, proto3, protoInt64 } from "@bufbuild/protobuf";
import { TxOutput } from "../cardano/cardano_pb.ts";

/**
 * Represents a specific point in the blockchain.
 *
 * @generated from message utxorpc.v1.build.ChainPoint
 */
export class ChainPoint extends Message<ChainPoint> {
  /**
   * Slot number.
   *
   * @generated from field: uint64 slot = 1;
   */
  slot = protoInt64.zero;

  /**
   * Block height.
   *
   * @generated from field: uint64 height = 2;
   */
  height = protoInt64.zero;

  /**
   * Block hash.
   *
   * @generated from field: bytes hash = 3;
   */
  hash = new Uint8Array(0);

  constructor(data?: PartialMessage<ChainPoint>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.ChainPoint";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "slot", kind: "scalar", T: 4 /* ScalarType.UINT64 */ },
    { no: 2, name: "height", kind: "scalar", T: 4 /* ScalarType.UINT64 */ },
    { no: 3, name: "hash", kind: "scalar", T: 12 /* ScalarType.BYTES */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): ChainPoint {
    return new ChainPoint().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): ChainPoint {
    return new ChainPoint().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): ChainPoint {
    return new ChainPoint().fromJsonString(jsonString, options);
  }

  static equals(a: ChainPoint | PlainMessage<ChainPoint> | undefined, b: ChainPoint | PlainMessage<ChainPoint> | undefined): boolean {
    return proto3.util.equals(ChainPoint, a, b);
  }
}

/**
 * Request to get the current chain tip.
 *
 * @generated from message utxorpc.v1.build.GetChainTipRequest
 */
export class GetChainTipRequest extends Message<GetChainTipRequest> {
  constructor(data?: PartialMessage<GetChainTipRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetChainTipRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetChainTipRequest {
    return new GetChainTipRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetChainTipRequest {
    return new GetChainTipRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetChainTipRequest {
    return new GetChainTipRequest().fromJsonString(jsonString, options);
  }

  static equals(a: GetChainTipRequest | PlainMessage<GetChainTipRequest> | undefined, b: GetChainTipRequest | PlainMessage<GetChainTipRequest> | undefined): boolean {
    return proto3.util.equals(GetChainTipRequest, a, b);
  }
}

/**
 * Response containing the current chain tip.
 *
 * @generated from message utxorpc.v1.build.GetChainTipResponse
 */
export class GetChainTipResponse extends Message<GetChainTipResponse> {
  /**
   * Current chain tip.
   *
   * @generated from field: utxorpc.v1.build.ChainPoint tip = 1;
   */
  tip?: ChainPoint;

  constructor(data?: PartialMessage<GetChainTipResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetChainTipResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "tip", kind: "message", T: ChainPoint },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetChainTipResponse {
    return new GetChainTipResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetChainTipResponse {
    return new GetChainTipResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetChainTipResponse {
    return new GetChainTipResponse().fromJsonString(jsonString, options);
  }

  static equals(a: GetChainTipResponse | PlainMessage<GetChainTipResponse> | undefined, b: GetChainTipResponse | PlainMessage<GetChainTipResponse> | undefined): boolean {
    return proto3.util.equals(GetChainTipResponse, a, b);
  }
}

/**
 * Request to get specific chain parameters.
 *
 * @generated from message utxorpc.v1.build.GetChainParamRequest
 */
export class GetChainParamRequest extends Message<GetChainParamRequest> {
  /**
   * List of requested parameters.
   *
   * @generated from field: repeated string param = 1;
   */
  param: string[] = [];

  constructor(data?: PartialMessage<GetChainParamRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetChainParamRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "param", kind: "scalar", T: 9 /* ScalarType.STRING */, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetChainParamRequest {
    return new GetChainParamRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetChainParamRequest {
    return new GetChainParamRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetChainParamRequest {
    return new GetChainParamRequest().fromJsonString(jsonString, options);
  }

  static equals(a: GetChainParamRequest | PlainMessage<GetChainParamRequest> | undefined, b: GetChainParamRequest | PlainMessage<GetChainParamRequest> | undefined): boolean {
    return proto3.util.equals(GetChainParamRequest, a, b);
  }
}

/**
 * Represents a key-value pair for a chain parameter.
 *
 * @generated from message utxorpc.v1.build.ChainParam
 */
export class ChainParam extends Message<ChainParam> {
  /**
   * Parameter key.
   *
   * @generated from field: string key = 1;
   */
  key = "";

  /**
   * Parameter value.
   *
   * @generated from field: bytes value = 2;
   */
  value = new Uint8Array(0);

  constructor(data?: PartialMessage<ChainParam>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.ChainParam";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "key", kind: "scalar", T: 9 /* ScalarType.STRING */ },
    { no: 2, name: "value", kind: "scalar", T: 12 /* ScalarType.BYTES */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): ChainParam {
    return new ChainParam().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): ChainParam {
    return new ChainParam().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): ChainParam {
    return new ChainParam().fromJsonString(jsonString, options);
  }

  static equals(a: ChainParam | PlainMessage<ChainParam> | undefined, b: ChainParam | PlainMessage<ChainParam> | undefined): boolean {
    return proto3.util.equals(ChainParam, a, b);
  }
}

/**
 * Response containing the requested chain parameters.
 *
 * @generated from message utxorpc.v1.build.GetChainParamResponse
 */
export class GetChainParamResponse extends Message<GetChainParamResponse> {
  /**
   * List of requested chain parameters.
   *
   * @generated from field: repeated utxorpc.v1.build.ChainParam param = 1;
   */
  param: ChainParam[] = [];

  constructor(data?: PartialMessage<GetChainParamResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetChainParamResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "param", kind: "message", T: ChainParam, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetChainParamResponse {
    return new GetChainParamResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetChainParamResponse {
    return new GetChainParamResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetChainParamResponse {
    return new GetChainParamResponse().fromJsonString(jsonString, options);
  }

  static equals(a: GetChainParamResponse | PlainMessage<GetChainParamResponse> | undefined, b: GetChainParamResponse | PlainMessage<GetChainParamResponse> | undefined): boolean {
    return proto3.util.equals(GetChainParamResponse, a, b);
  }
}

/**
 * Request to get UTxOs by their associated addresses.
 *
 * @generated from message utxorpc.v1.build.GetUtxoByAddressRequest
 */
export class GetUtxoByAddressRequest extends Message<GetUtxoByAddressRequest> {
  /**
   * List of addresses to query.
   *
   * @generated from field: repeated bytes address = 1;
   */
  address: Uint8Array[] = [];

  /**
   * Point in the chain to query from.
   *
   * @generated from field: utxorpc.v1.build.ChainPoint acquire_point = 2;
   */
  acquirePoint?: ChainPoint;

  constructor(data?: PartialMessage<GetUtxoByAddressRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetUtxoByAddressRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "address", kind: "scalar", T: 12 /* ScalarType.BYTES */, repeated: true },
    { no: 2, name: "acquire_point", kind: "message", T: ChainPoint },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetUtxoByAddressRequest {
    return new GetUtxoByAddressRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetUtxoByAddressRequest {
    return new GetUtxoByAddressRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetUtxoByAddressRequest {
    return new GetUtxoByAddressRequest().fromJsonString(jsonString, options);
  }

  static equals(a: GetUtxoByAddressRequest | PlainMessage<GetUtxoByAddressRequest> | undefined, b: GetUtxoByAddressRequest | PlainMessage<GetUtxoByAddressRequest> | undefined): boolean {
    return proto3.util.equals(GetUtxoByAddressRequest, a, b);
  }
}

/**
 * An evenlope that holds an UTxO from any of compatible chains
 *
 * @generated from message utxorpc.v1.build.AnyChainUtxo
 */
export class AnyChainUtxo extends Message<AnyChainUtxo> {
  /**
   * @generated from oneof utxorpc.v1.build.AnyChainUtxo.chain
   */
  chain: {
    /**
     * @generated from field: utxorpc.v1.cardano.TxOutput cardano = 1;
     */
    value: TxOutput;
    case: "cardano";
  } | { case: undefined; value?: undefined } = { case: undefined };

  constructor(data?: PartialMessage<AnyChainUtxo>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.AnyChainUtxo";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "cardano", kind: "message", T: TxOutput, oneof: "chain" },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): AnyChainUtxo {
    return new AnyChainUtxo().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): AnyChainUtxo {
    return new AnyChainUtxo().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): AnyChainUtxo {
    return new AnyChainUtxo().fromJsonString(jsonString, options);
  }

  static equals(a: AnyChainUtxo | PlainMessage<AnyChainUtxo> | undefined, b: AnyChainUtxo | PlainMessage<AnyChainUtxo> | undefined): boolean {
    return proto3.util.equals(AnyChainUtxo, a, b);
  }
}

/**
 * Response containing the UTxOs associated with the requested addresses.
 *
 * @generated from message utxorpc.v1.build.GetUtxoByAddressResponse
 */
export class GetUtxoByAddressResponse extends Message<GetUtxoByAddressResponse> {
  /**
   * List of UTxOs.
   *
   * @generated from field: repeated utxorpc.v1.build.AnyChainUtxo items = 1;
   */
  items: AnyChainUtxo[] = [];

  /**
   * Token for pagination.
   *
   * @generated from field: string next_token = 2;
   */
  nextToken = "";

  constructor(data?: PartialMessage<GetUtxoByAddressResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetUtxoByAddressResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "items", kind: "message", T: AnyChainUtxo, repeated: true },
    { no: 2, name: "next_token", kind: "scalar", T: 9 /* ScalarType.STRING */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetUtxoByAddressResponse {
    return new GetUtxoByAddressResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetUtxoByAddressResponse {
    return new GetUtxoByAddressResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetUtxoByAddressResponse {
    return new GetUtxoByAddressResponse().fromJsonString(jsonString, options);
  }

  static equals(a: GetUtxoByAddressResponse | PlainMessage<GetUtxoByAddressResponse> | undefined, b: GetUtxoByAddressResponse | PlainMessage<GetUtxoByAddressResponse> | undefined): boolean {
    return proto3.util.equals(GetUtxoByAddressResponse, a, b);
  }
}

/**
 * Represents a reference to a UTxO.
 *
 * @generated from message utxorpc.v1.build.UtxoRef
 */
export class UtxoRef extends Message<UtxoRef> {
  /**
   * Transaction hash.
   *
   * @generated from field: bytes hash = 1;
   */
  hash = new Uint8Array(0);

  /**
   * Output index.
   *
   * @generated from field: uint32 index = 2;
   */
  index = 0;

  constructor(data?: PartialMessage<UtxoRef>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.UtxoRef";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "hash", kind: "scalar", T: 12 /* ScalarType.BYTES */ },
    { no: 2, name: "index", kind: "scalar", T: 13 /* ScalarType.UINT32 */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): UtxoRef {
    return new UtxoRef().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): UtxoRef {
    return new UtxoRef().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): UtxoRef {
    return new UtxoRef().fromJsonString(jsonString, options);
  }

  static equals(a: UtxoRef | PlainMessage<UtxoRef> | undefined, b: UtxoRef | PlainMessage<UtxoRef> | undefined): boolean {
    return proto3.util.equals(UtxoRef, a, b);
  }
}

/**
 * Request to get UTxOs by their references.
 *
 * @generated from message utxorpc.v1.build.GetUtxoByRefRequest
 */
export class GetUtxoByRefRequest extends Message<GetUtxoByRefRequest> {
  /**
   * List of UTxO references to query.
   *
   * @generated from field: repeated utxorpc.v1.build.UtxoRef ref = 1;
   */
  ref: UtxoRef[] = [];

  /**
   * Point in the chain to query from.
   *
   * @generated from field: utxorpc.v1.build.ChainPoint acquire_point = 2;
   */
  acquirePoint?: ChainPoint;

  constructor(data?: PartialMessage<GetUtxoByRefRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetUtxoByRefRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "ref", kind: "message", T: UtxoRef, repeated: true },
    { no: 2, name: "acquire_point", kind: "message", T: ChainPoint },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetUtxoByRefRequest {
    return new GetUtxoByRefRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetUtxoByRefRequest {
    return new GetUtxoByRefRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetUtxoByRefRequest {
    return new GetUtxoByRefRequest().fromJsonString(jsonString, options);
  }

  static equals(a: GetUtxoByRefRequest | PlainMessage<GetUtxoByRefRequest> | undefined, b: GetUtxoByRefRequest | PlainMessage<GetUtxoByRefRequest> | undefined): boolean {
    return proto3.util.equals(GetUtxoByRefRequest, a, b);
  }
}

/**
 * Response containing the UTxOs associated with the requested references.
 *
 * @generated from message utxorpc.v1.build.GetUtxoByRefResponse
 */
export class GetUtxoByRefResponse extends Message<GetUtxoByRefResponse> {
  /**
   * List of UTxOs.
   *
   * @generated from field: repeated utxorpc.v1.build.AnyChainUtxo items = 1;
   */
  items: AnyChainUtxo[] = [];

  /**
   * Token for pagination.
   *
   * @generated from field: string next_token = 2;
   */
  nextToken = "";

  constructor(data?: PartialMessage<GetUtxoByRefResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.GetUtxoByRefResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "items", kind: "message", T: AnyChainUtxo, repeated: true },
    { no: 2, name: "next_token", kind: "scalar", T: 9 /* ScalarType.STRING */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): GetUtxoByRefResponse {
    return new GetUtxoByRefResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): GetUtxoByRefResponse {
    return new GetUtxoByRefResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): GetUtxoByRefResponse {
    return new GetUtxoByRefResponse().fromJsonString(jsonString, options);
  }

  static equals(a: GetUtxoByRefResponse | PlainMessage<GetUtxoByRefResponse> | undefined, b: GetUtxoByRefResponse | PlainMessage<GetUtxoByRefResponse> | undefined): boolean {
    return proto3.util.equals(GetUtxoByRefResponse, a, b);
  }
}

/**
 * Request to hold UTxOs.
 *
 * @generated from message utxorpc.v1.build.HoldUtxoRequest
 */
export class HoldUtxoRequest extends Message<HoldUtxoRequest> {
  /**
   * List of UTxO references to hold.
   *
   * @generated from field: repeated utxorpc.v1.build.UtxoRef refs = 1;
   */
  refs: UtxoRef[] = [];

  constructor(data?: PartialMessage<HoldUtxoRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.HoldUtxoRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "refs", kind: "message", T: UtxoRef, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): HoldUtxoRequest {
    return new HoldUtxoRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): HoldUtxoRequest {
    return new HoldUtxoRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): HoldUtxoRequest {
    return new HoldUtxoRequest().fromJsonString(jsonString, options);
  }

  static equals(a: HoldUtxoRequest | PlainMessage<HoldUtxoRequest> | undefined, b: HoldUtxoRequest | PlainMessage<HoldUtxoRequest> | undefined): boolean {
    return proto3.util.equals(HoldUtxoRequest, a, b);
  }
}

/**
 * Response containing information about lost UTxOs.
 *
 * @generated from message utxorpc.v1.build.HoldUtxoResponse
 */
export class HoldUtxoResponse extends Message<HoldUtxoResponse> {
  /**
   * List of lost UTxO references.
   *
   * @generated from field: repeated utxorpc.v1.build.UtxoRef lost = 1;
   */
  lost: UtxoRef[] = [];

  constructor(data?: PartialMessage<HoldUtxoResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.build.HoldUtxoResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "lost", kind: "message", T: UtxoRef, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): HoldUtxoResponse {
    return new HoldUtxoResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): HoldUtxoResponse {
    return new HoldUtxoResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): HoldUtxoResponse {
    return new HoldUtxoResponse().fromJsonString(jsonString, options);
  }

  static equals(a: HoldUtxoResponse | PlainMessage<HoldUtxoResponse> | undefined, b: HoldUtxoResponse | PlainMessage<HoldUtxoResponse> | undefined): boolean {
    return proto3.util.equals(HoldUtxoResponse, a, b);
  }
}

