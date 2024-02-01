// @generated by protoc-gen-es v1.7.2 with parameter "target=ts,import_extension=.ts"
// @generated from file utxorpc/v1/submit/submit.proto (package utxorpc.v1.submit, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import type { BinaryReadOptions, FieldList, JsonReadOptions, JsonValue, PartialMessage, PlainMessage } from "@bufbuild/protobuf";
import { FieldMask, Message, proto3 } from "@bufbuild/protobuf";
import { TxPattern } from "../cardano/cardano_pb.ts";

/**
 * Enum representing the various stages of a transaction's lifecycle.
 *
 * @generated from enum utxorpc.v1.submit.Stage
 */
export enum Stage {
  /**
   * Unspecified stage.
   *
   * @generated from enum value: STAGE_UNSPECIFIED = 0;
   */
  UNSPECIFIED = 0,

  /**
   * Transaction has been acknowledged by the node.
   *
   * @generated from enum value: STAGE_ACKNOWLEDGED = 1;
   */
  ACKNOWLEDGED = 1,

  /**
   * Transaction is in the mempool.
   *
   * @generated from enum value: STAGE_MEMPOOL = 2;
   */
  MEMPOOL = 2,

  /**
   * Transaction has been propagated across the network.
   *
   * @generated from enum value: STAGE_NETWORK = 3;
   */
  NETWORK = 3,

  /**
   * Transaction has been confirmed on the blockchain.
   *
   * @generated from enum value: STAGE_CONFIRMED = 4;
   */
  CONFIRMED = 4,
}
// Retrieve enum metadata with: proto3.getEnumType(Stage)
proto3.util.setEnumType(Stage, "utxorpc.v1.submit.Stage", [
  { no: 0, name: "STAGE_UNSPECIFIED" },
  { no: 1, name: "STAGE_ACKNOWLEDGED" },
  { no: 2, name: "STAGE_MEMPOOL" },
  { no: 3, name: "STAGE_NETWORK" },
  { no: 4, name: "STAGE_CONFIRMED" },
]);

/**
 * Represents a transaction from any supported blockchain.
 *
 * @generated from message utxorpc.v1.submit.AnyChainTx
 */
export class AnyChainTx extends Message<AnyChainTx> {
  /**
   * @generated from oneof utxorpc.v1.submit.AnyChainTx.type
   */
  type: {
    /**
     * Raw transaction data.
     *
     * @generated from field: bytes raw = 1;
     */
    value: Uint8Array;
    case: "raw";
  } | { case: undefined; value?: undefined } = { case: undefined };

  constructor(data?: PartialMessage<AnyChainTx>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.AnyChainTx";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "raw", kind: "scalar", T: 12 /* ScalarType.BYTES */, oneof: "type" },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): AnyChainTx {
    return new AnyChainTx().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): AnyChainTx {
    return new AnyChainTx().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): AnyChainTx {
    return new AnyChainTx().fromJsonString(jsonString, options);
  }

  static equals(a: AnyChainTx | PlainMessage<AnyChainTx> | undefined, b: AnyChainTx | PlainMessage<AnyChainTx> | undefined): boolean {
    return proto3.util.equals(AnyChainTx, a, b);
  }
}

/**
 * Request to submit transactions to the blockchain.
 *
 * @generated from message utxorpc.v1.submit.SubmitTxRequest
 */
export class SubmitTxRequest extends Message<SubmitTxRequest> {
  /**
   * List of transactions to submit.
   *
   * @generated from field: repeated utxorpc.v1.submit.AnyChainTx tx = 1;
   */
  tx: AnyChainTx[] = [];

  constructor(data?: PartialMessage<SubmitTxRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.SubmitTxRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "tx", kind: "message", T: AnyChainTx, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): SubmitTxRequest {
    return new SubmitTxRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): SubmitTxRequest {
    return new SubmitTxRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): SubmitTxRequest {
    return new SubmitTxRequest().fromJsonString(jsonString, options);
  }

  static equals(a: SubmitTxRequest | PlainMessage<SubmitTxRequest> | undefined, b: SubmitTxRequest | PlainMessage<SubmitTxRequest> | undefined): boolean {
    return proto3.util.equals(SubmitTxRequest, a, b);
  }
}

/**
 * Response containing references to the submitted transactions.
 *
 * @generated from message utxorpc.v1.submit.SubmitTxResponse
 */
export class SubmitTxResponse extends Message<SubmitTxResponse> {
  /**
   * List of transaction references.
   *
   * @generated from field: repeated bytes ref = 1;
   */
  ref: Uint8Array[] = [];

  constructor(data?: PartialMessage<SubmitTxResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.SubmitTxResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "ref", kind: "scalar", T: 12 /* ScalarType.BYTES */, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): SubmitTxResponse {
    return new SubmitTxResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): SubmitTxResponse {
    return new SubmitTxResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): SubmitTxResponse {
    return new SubmitTxResponse().fromJsonString(jsonString, options);
  }

  static equals(a: SubmitTxResponse | PlainMessage<SubmitTxResponse> | undefined, b: SubmitTxResponse | PlainMessage<SubmitTxResponse> | undefined): boolean {
    return proto3.util.equals(SubmitTxResponse, a, b);
  }
}

/**
 * @generated from message utxorpc.v1.submit.TxInMempool
 */
export class TxInMempool extends Message<TxInMempool> {
  /**
   * The contents of the tx
   *
   * @generated from field: utxorpc.v1.submit.AnyChainTx tx = 1;
   */
  tx?: AnyChainTx;

  /**
   * The current stage of the tx
   *
   * @generated from field: utxorpc.v1.submit.Stage stage = 2;
   */
  stage = Stage.UNSPECIFIED;

  constructor(data?: PartialMessage<TxInMempool>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.TxInMempool";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "tx", kind: "message", T: AnyChainTx },
    { no: 2, name: "stage", kind: "enum", T: proto3.getEnumType(Stage) },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): TxInMempool {
    return new TxInMempool().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): TxInMempool {
    return new TxInMempool().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): TxInMempool {
    return new TxInMempool().fromJsonString(jsonString, options);
  }

  static equals(a: TxInMempool | PlainMessage<TxInMempool> | undefined, b: TxInMempool | PlainMessage<TxInMempool> | undefined): boolean {
    return proto3.util.equals(TxInMempool, a, b);
  }
}

/**
 * Request to check the status of submitted transactions.
 *
 * @generated from message utxorpc.v1.submit.ReadMempoolRequest
 */
export class ReadMempoolRequest extends Message<ReadMempoolRequest> {
  /**
   * List of transaction currently on the mempool.
   *
   * @generated from field: repeated utxorpc.v1.submit.TxInMempool txs = 1;
   */
  txs: TxInMempool[] = [];

  constructor(data?: PartialMessage<ReadMempoolRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.ReadMempoolRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "txs", kind: "message", T: TxInMempool, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): ReadMempoolRequest {
    return new ReadMempoolRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): ReadMempoolRequest {
    return new ReadMempoolRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): ReadMempoolRequest {
    return new ReadMempoolRequest().fromJsonString(jsonString, options);
  }

  static equals(a: ReadMempoolRequest | PlainMessage<ReadMempoolRequest> | undefined, b: ReadMempoolRequest | PlainMessage<ReadMempoolRequest> | undefined): boolean {
    return proto3.util.equals(ReadMempoolRequest, a, b);
  }
}

/**
 * Response containing the stage of the submitted transactions.
 *
 * @generated from message utxorpc.v1.submit.ReadMempoolResponse
 */
export class ReadMempoolResponse extends Message<ReadMempoolResponse> {
  /**
   * List of stages corresponding to the transaction references.
   *
   * @generated from field: repeated utxorpc.v1.submit.Stage stage = 1;
   */
  stage: Stage[] = [];

  constructor(data?: PartialMessage<ReadMempoolResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.ReadMempoolResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "stage", kind: "enum", T: proto3.getEnumType(Stage), repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): ReadMempoolResponse {
    return new ReadMempoolResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): ReadMempoolResponse {
    return new ReadMempoolResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): ReadMempoolResponse {
    return new ReadMempoolResponse().fromJsonString(jsonString, options);
  }

  static equals(a: ReadMempoolResponse | PlainMessage<ReadMempoolResponse> | undefined, b: ReadMempoolResponse | PlainMessage<ReadMempoolResponse> | undefined): boolean {
    return proto3.util.equals(ReadMempoolResponse, a, b);
  }
}

/**
 * Request to wait for transactions to reach a certain stage.
 *
 * @generated from message utxorpc.v1.submit.WaitForTxRequest
 */
export class WaitForTxRequest extends Message<WaitForTxRequest> {
  /**
   * List of transaction references to wait for.
   *
   * @generated from field: repeated bytes ref = 1;
   */
  ref: Uint8Array[] = [];

  constructor(data?: PartialMessage<WaitForTxRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.WaitForTxRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "ref", kind: "scalar", T: 12 /* ScalarType.BYTES */, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): WaitForTxRequest {
    return new WaitForTxRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): WaitForTxRequest {
    return new WaitForTxRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): WaitForTxRequest {
    return new WaitForTxRequest().fromJsonString(jsonString, options);
  }

  static equals(a: WaitForTxRequest | PlainMessage<WaitForTxRequest> | undefined, b: WaitForTxRequest | PlainMessage<WaitForTxRequest> | undefined): boolean {
    return proto3.util.equals(WaitForTxRequest, a, b);
  }
}

/**
 * Response containing the transaction reference and stage once it has been reached.
 *
 * @generated from message utxorpc.v1.submit.WaitForTxResponse
 */
export class WaitForTxResponse extends Message<WaitForTxResponse> {
  /**
   * Transaction reference.
   *
   * @generated from field: bytes ref = 1;
   */
  ref = new Uint8Array(0);

  /**
   * Stage reached by the transaction.
   *
   * @generated from field: utxorpc.v1.submit.Stage stage = 2;
   */
  stage = Stage.UNSPECIFIED;

  constructor(data?: PartialMessage<WaitForTxResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.WaitForTxResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "ref", kind: "scalar", T: 12 /* ScalarType.BYTES */ },
    { no: 2, name: "stage", kind: "enum", T: proto3.getEnumType(Stage) },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): WaitForTxResponse {
    return new WaitForTxResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): WaitForTxResponse {
    return new WaitForTxResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): WaitForTxResponse {
    return new WaitForTxResponse().fromJsonString(jsonString, options);
  }

  static equals(a: WaitForTxResponse | PlainMessage<WaitForTxResponse> | undefined, b: WaitForTxResponse | PlainMessage<WaitForTxResponse> | undefined): boolean {
    return proto3.util.equals(WaitForTxResponse, a, b);
  }
}

/**
 * Represents a tx pattern from any supported blockchain.
 *
 * @generated from message utxorpc.v1.submit.AnyChainTxPattern
 */
export class AnyChainTxPattern extends Message<AnyChainTxPattern> {
  /**
   * @generated from oneof utxorpc.v1.submit.AnyChainTxPattern.chain
   */
  chain: {
    /**
     * A Cardano tx pattern.
     *
     * @generated from field: utxorpc.v1.cardano.TxPattern cardano = 1;
     */
    value: TxPattern;
    case: "cardano";
  } | { case: undefined; value?: undefined } = { case: undefined };

  constructor(data?: PartialMessage<AnyChainTxPattern>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.AnyChainTxPattern";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "cardano", kind: "message", T: TxPattern, oneof: "chain" },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): AnyChainTxPattern {
    return new AnyChainTxPattern().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): AnyChainTxPattern {
    return new AnyChainTxPattern().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): AnyChainTxPattern {
    return new AnyChainTxPattern().fromJsonString(jsonString, options);
  }

  static equals(a: AnyChainTxPattern | PlainMessage<AnyChainTxPattern> | undefined, b: AnyChainTxPattern | PlainMessage<AnyChainTxPattern> | undefined): boolean {
    return proto3.util.equals(AnyChainTxPattern, a, b);
  }
}

/**
 * Represents a simple tx predicate that can composed to create more complext ones
 *
 * @generated from message utxorpc.v1.submit.TxPredicate
 */
export class TxPredicate extends Message<TxPredicate> {
  /**
   * Predicate is true if tx exhibits pattern.
   *
   * @generated from field: utxorpc.v1.submit.AnyChainTxPattern match = 1;
   */
  match?: AnyChainTxPattern;

  /**
   * Predicate is true if tx doesn't exhibit pattern.
   *
   * @generated from field: repeated utxorpc.v1.submit.TxPredicate not = 2;
   */
  not: TxPredicate[] = [];

  /**
   * Predicate is true if tx exhibits all of the patterns.
   *
   * @generated from field: repeated utxorpc.v1.submit.TxPredicate all_of = 3;
   */
  allOf: TxPredicate[] = [];

  /**
   * Predicate is true if tx exhibits any of the patterns.
   *
   * @generated from field: repeated utxorpc.v1.submit.TxPredicate any_of = 4;
   */
  anyOf: TxPredicate[] = [];

  constructor(data?: PartialMessage<TxPredicate>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.TxPredicate";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "match", kind: "message", T: AnyChainTxPattern },
    { no: 2, name: "not", kind: "message", T: TxPredicate, repeated: true },
    { no: 3, name: "all_of", kind: "message", T: TxPredicate, repeated: true },
    { no: 4, name: "any_of", kind: "message", T: TxPredicate, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): TxPredicate {
    return new TxPredicate().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): TxPredicate {
    return new TxPredicate().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): TxPredicate {
    return new TxPredicate().fromJsonString(jsonString, options);
  }

  static equals(a: TxPredicate | PlainMessage<TxPredicate> | undefined, b: TxPredicate | PlainMessage<TxPredicate> | undefined): boolean {
    return proto3.util.equals(TxPredicate, a, b);
  }
}

/**
 * Request to watch changes of specific mempool txs.
 *
 * @generated from message utxorpc.v1.submit.WatchMempoolRequest
 */
export class WatchMempoolRequest extends Message<WatchMempoolRequest> {
  /**
   * A predicate to filter transactions by.
   *
   * @generated from field: utxorpc.v1.submit.TxPredicate predicate = 1;
   */
  predicate?: TxPredicate;

  /**
   * Field mask to selectively return fields.
   *
   * @generated from field: google.protobuf.FieldMask field_mask = 2;
   */
  fieldMask?: FieldMask;

  constructor(data?: PartialMessage<WatchMempoolRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.WatchMempoolRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "predicate", kind: "message", T: TxPredicate },
    { no: 2, name: "field_mask", kind: "message", T: FieldMask },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): WatchMempoolRequest {
    return new WatchMempoolRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): WatchMempoolRequest {
    return new WatchMempoolRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): WatchMempoolRequest {
    return new WatchMempoolRequest().fromJsonString(jsonString, options);
  }

  static equals(a: WatchMempoolRequest | PlainMessage<WatchMempoolRequest> | undefined, b: WatchMempoolRequest | PlainMessage<WatchMempoolRequest> | undefined): boolean {
    return proto3.util.equals(WatchMempoolRequest, a, b);
  }
}

/**
 * Response that represents a change in a mempool tx.
 *
 * @generated from message utxorpc.v1.submit.WatchMempoolResponse
 */
export class WatchMempoolResponse extends Message<WatchMempoolResponse> {
  /**
   * The content and stage of the tx that has changed
   *
   * @generated from field: utxorpc.v1.submit.TxInMempool tx = 1;
   */
  tx?: TxInMempool;

  constructor(data?: PartialMessage<WatchMempoolResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.submit.WatchMempoolResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "tx", kind: "message", T: TxInMempool },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): WatchMempoolResponse {
    return new WatchMempoolResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): WatchMempoolResponse {
    return new WatchMempoolResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): WatchMempoolResponse {
    return new WatchMempoolResponse().fromJsonString(jsonString, options);
  }

  static equals(a: WatchMempoolResponse | PlainMessage<WatchMempoolResponse> | undefined, b: WatchMempoolResponse | PlainMessage<WatchMempoolResponse> | undefined): boolean {
    return proto3.util.equals(WatchMempoolResponse, a, b);
  }
}

