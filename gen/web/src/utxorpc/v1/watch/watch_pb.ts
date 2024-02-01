// @generated by protoc-gen-es v1.7.2 with parameter "target=ts,import_extension=.ts"
// @generated from file utxorpc/v1/watch/watch.proto (package utxorpc.v1.watch, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import type { BinaryReadOptions, FieldList, JsonReadOptions, JsonValue, PartialMessage, PlainMessage } from "@bufbuild/protobuf";
import { FieldMask, Message, proto3 } from "@bufbuild/protobuf";
import { Tx, TxPattern } from "../cardano/cardano_pb.ts";

/**
 * Represents a tx pattern from any supported blockchain.
 *
 * @generated from message utxorpc.v1.watch.AnyChainTxPattern
 */
export class AnyChainTxPattern extends Message<AnyChainTxPattern> {
  /**
   * @generated from oneof utxorpc.v1.watch.AnyChainTxPattern.chain
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
  static readonly typeName = "utxorpc.v1.watch.AnyChainTxPattern";
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
 * @generated from message utxorpc.v1.watch.TxPredicate
 */
export class TxPredicate extends Message<TxPredicate> {
  /**
   * Predicate is true if tx exhibits pattern.
   *
   * @generated from field: utxorpc.v1.watch.AnyChainTxPattern match = 1;
   */
  match?: AnyChainTxPattern;

  /**
   * Predicate is true if tx doesn't exhibit pattern.
   *
   * @generated from field: repeated utxorpc.v1.watch.TxPredicate not = 2;
   */
  not: TxPredicate[] = [];

  /**
   * Predicate is true if tx exhibits all of the patterns.
   *
   * @generated from field: repeated utxorpc.v1.watch.TxPredicate all_of = 3;
   */
  allOf: TxPredicate[] = [];

  /**
   * Predicate is true if tx exhibits any of the patterns.
   *
   * @generated from field: repeated utxorpc.v1.watch.TxPredicate any_of = 4;
   */
  anyOf: TxPredicate[] = [];

  constructor(data?: PartialMessage<TxPredicate>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.watch.TxPredicate";
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
 * Request to watch transactions from the chain based on a set of predicates.
 *
 * @generated from message utxorpc.v1.watch.WatchTxRequest
 */
export class WatchTxRequest extends Message<WatchTxRequest> {
  /**
   * Predicate to filter transactions by.
   *
   * @generated from field: utxorpc.v1.watch.TxPredicate predicate = 1;
   */
  predicate?: TxPredicate;

  /**
   * Field mask to selectively return fields.
   *
   * @generated from field: google.protobuf.FieldMask field_mask = 2;
   */
  fieldMask?: FieldMask;

  constructor(data?: PartialMessage<WatchTxRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.watch.WatchTxRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "predicate", kind: "message", T: TxPredicate },
    { no: 2, name: "field_mask", kind: "message", T: FieldMask },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): WatchTxRequest {
    return new WatchTxRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): WatchTxRequest {
    return new WatchTxRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): WatchTxRequest {
    return new WatchTxRequest().fromJsonString(jsonString, options);
  }

  static equals(a: WatchTxRequest | PlainMessage<WatchTxRequest> | undefined, b: WatchTxRequest | PlainMessage<WatchTxRequest> | undefined): boolean {
    return proto3.util.equals(WatchTxRequest, a, b);
  }
}

/**
 * Represents a transaction from any supported blockchain.
 *
 * @generated from message utxorpc.v1.watch.AnyChainTx
 */
export class AnyChainTx extends Message<AnyChainTx> {
  /**
   * @generated from oneof utxorpc.v1.watch.AnyChainTx.chain
   */
  chain: {
    /**
     * A Cardano transaction.
     *
     * @generated from field: utxorpc.v1.cardano.Tx cardano = 1;
     */
    value: Tx;
    case: "cardano";
  } | { case: undefined; value?: undefined } = { case: undefined };

  constructor(data?: PartialMessage<AnyChainTx>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.watch.AnyChainTx";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "cardano", kind: "message", T: Tx, oneof: "chain" },
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
 * Response containing the matching chain transactions.
 *
 * @generated from message utxorpc.v1.watch.WatchTxResponse
 */
export class WatchTxResponse extends Message<WatchTxResponse> {
  /**
   * @generated from oneof utxorpc.v1.watch.WatchTxResponse.action
   */
  action: {
    /**
     * Apply this transaction.
     *
     * @generated from field: utxorpc.v1.watch.AnyChainTx apply = 1;
     */
    value: AnyChainTx;
    case: "apply";
  } | {
    /**
     * Undo this transaction.
     *
     * @generated from field: utxorpc.v1.watch.AnyChainTx undo = 2;
     */
    value: AnyChainTx;
    case: "undo";
  } | { case: undefined; value?: undefined } = { case: undefined };

  constructor(data?: PartialMessage<WatchTxResponse>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "utxorpc.v1.watch.WatchTxResponse";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "apply", kind: "message", T: AnyChainTx, oneof: "action" },
    { no: 2, name: "undo", kind: "message", T: AnyChainTx, oneof: "action" },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): WatchTxResponse {
    return new WatchTxResponse().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): WatchTxResponse {
    return new WatchTxResponse().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): WatchTxResponse {
    return new WatchTxResponse().fromJsonString(jsonString, options);
  }

  static equals(a: WatchTxResponse | PlainMessage<WatchTxResponse> | undefined, b: WatchTxResponse | PlainMessage<WatchTxResponse> | undefined): boolean {
    return proto3.util.equals(WatchTxResponse, a, b);
  }
}

