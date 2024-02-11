// @generated by protoc-gen-connect-es v1.3.0 with parameter "target=ts"
// @generated from file utxorpc/v1alpha/sync/sync.proto (package utxorpc.v1alpha.sync, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import { DumpHistoryRequest, DumpHistoryResponse, FetchBlockRequest, FetchBlockResponse, FollowTipRequest, FollowTipResponse } from "./sync_pb.js";
import { MethodKind } from "@bufbuild/protobuf";

/**
 * Service definition for syncing chain data.
 *
 * @generated from service utxorpc.v1alpha.sync.ChainSyncService
 */
export const ChainSyncService = {
  typeName: "utxorpc.v1alpha.sync.ChainSyncService",
  methods: {
    /**
     * Fetch a block by its reference.
     *
     * @generated from rpc utxorpc.v1alpha.sync.ChainSyncService.FetchBlock
     */
    fetchBlock: {
      name: "FetchBlock",
      I: FetchBlockRequest,
      O: FetchBlockResponse,
      kind: MethodKind.Unary,
    },
    /**
     * Dump the block history.
     *
     * @generated from rpc utxorpc.v1alpha.sync.ChainSyncService.DumpHistory
     */
    dumpHistory: {
      name: "DumpHistory",
      I: DumpHistoryRequest,
      O: DumpHistoryResponse,
      kind: MethodKind.Unary,
    },
    /**
     * Follow the tip of the blockchain.
     *
     * @generated from rpc utxorpc.v1alpha.sync.ChainSyncService.FollowTip
     */
    followTip: {
      name: "FollowTip",
      I: FollowTipRequest,
      O: FollowTipResponse,
      kind: MethodKind.ServerStreaming,
    },
  }
} as const;
