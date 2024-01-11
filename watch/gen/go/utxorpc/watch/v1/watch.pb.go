// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.32.0
// 	protoc        (unknown)
// source: utxorpc/watch/v1/watch.proto

package watchv1

import (
	v1 "github.com/bufbuild/buf-tour/gen/utxorpc/cardano/v1"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	fieldmaskpb "google.golang.org/protobuf/types/known/fieldmaskpb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// Represents a tx pattern from any supported blockchain.
type AnyChainTxPattern struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Chain:
	//
	//	*AnyChainTxPattern_Cardano
	Chain isAnyChainTxPattern_Chain `protobuf_oneof:"chain"`
}

func (x *AnyChainTxPattern) Reset() {
	*x = AnyChainTxPattern{}
	if protoimpl.UnsafeEnabled {
		mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AnyChainTxPattern) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AnyChainTxPattern) ProtoMessage() {}

func (x *AnyChainTxPattern) ProtoReflect() protoreflect.Message {
	mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AnyChainTxPattern.ProtoReflect.Descriptor instead.
func (*AnyChainTxPattern) Descriptor() ([]byte, []int) {
	return file_utxorpc_watch_v1_watch_proto_rawDescGZIP(), []int{0}
}

func (m *AnyChainTxPattern) GetChain() isAnyChainTxPattern_Chain {
	if m != nil {
		return m.Chain
	}
	return nil
}

func (x *AnyChainTxPattern) GetCardano() *v1.TxPattern {
	if x, ok := x.GetChain().(*AnyChainTxPattern_Cardano); ok {
		return x.Cardano
	}
	return nil
}

type isAnyChainTxPattern_Chain interface {
	isAnyChainTxPattern_Chain()
}

type AnyChainTxPattern_Cardano struct {
	Cardano *v1.TxPattern `protobuf:"bytes,1,opt,name=cardano,proto3,oneof"` // A Cardano tx pattern.
}

func (*AnyChainTxPattern_Cardano) isAnyChainTxPattern_Chain() {}

type TxPredicate struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Match *AnyChainTxPattern `protobuf:"bytes,1,opt,name=match,proto3" json:"match,omitempty"`
	Not   []*TxPredicate     `protobuf:"bytes,2,rep,name=not,proto3" json:"not,omitempty"`
	AllOf []*TxPredicate     `protobuf:"bytes,3,rep,name=all_of,json=allOf,proto3" json:"all_of,omitempty"`
	AnyOf []*TxPredicate     `protobuf:"bytes,4,rep,name=any_of,json=anyOf,proto3" json:"any_of,omitempty"`
}

func (x *TxPredicate) Reset() {
	*x = TxPredicate{}
	if protoimpl.UnsafeEnabled {
		mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TxPredicate) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TxPredicate) ProtoMessage() {}

func (x *TxPredicate) ProtoReflect() protoreflect.Message {
	mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TxPredicate.ProtoReflect.Descriptor instead.
func (*TxPredicate) Descriptor() ([]byte, []int) {
	return file_utxorpc_watch_v1_watch_proto_rawDescGZIP(), []int{1}
}

func (x *TxPredicate) GetMatch() *AnyChainTxPattern {
	if x != nil {
		return x.Match
	}
	return nil
}

func (x *TxPredicate) GetNot() []*TxPredicate {
	if x != nil {
		return x.Not
	}
	return nil
}

func (x *TxPredicate) GetAllOf() []*TxPredicate {
	if x != nil {
		return x.AllOf
	}
	return nil
}

func (x *TxPredicate) GetAnyOf() []*TxPredicate {
	if x != nil {
		return x.AnyOf
	}
	return nil
}

// Request to watch transactions based on a set of predicates.
type WatchTxRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Predicate []*TxPredicate         `protobuf:"bytes,1,rep,name=predicate,proto3" json:"predicate,omitempty"`                  // List of predicates to filter transactions.
	FieldMask *fieldmaskpb.FieldMask `protobuf:"bytes,2,opt,name=field_mask,json=fieldMask,proto3" json:"field_mask,omitempty"` // Field mask to selectively return fields.
}

func (x *WatchTxRequest) Reset() {
	*x = WatchTxRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *WatchTxRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*WatchTxRequest) ProtoMessage() {}

func (x *WatchTxRequest) ProtoReflect() protoreflect.Message {
	mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use WatchTxRequest.ProtoReflect.Descriptor instead.
func (*WatchTxRequest) Descriptor() ([]byte, []int) {
	return file_utxorpc_watch_v1_watch_proto_rawDescGZIP(), []int{2}
}

func (x *WatchTxRequest) GetPredicate() []*TxPredicate {
	if x != nil {
		return x.Predicate
	}
	return nil
}

func (x *WatchTxRequest) GetFieldMask() *fieldmaskpb.FieldMask {
	if x != nil {
		return x.FieldMask
	}
	return nil
}

// Represents a transaction from any supported blockchain.
type AnyChainTx struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Chain:
	//
	//	*AnyChainTx_Cardano
	Chain isAnyChainTx_Chain `protobuf_oneof:"chain"`
}

func (x *AnyChainTx) Reset() {
	*x = AnyChainTx{}
	if protoimpl.UnsafeEnabled {
		mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AnyChainTx) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AnyChainTx) ProtoMessage() {}

func (x *AnyChainTx) ProtoReflect() protoreflect.Message {
	mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AnyChainTx.ProtoReflect.Descriptor instead.
func (*AnyChainTx) Descriptor() ([]byte, []int) {
	return file_utxorpc_watch_v1_watch_proto_rawDescGZIP(), []int{3}
}

func (m *AnyChainTx) GetChain() isAnyChainTx_Chain {
	if m != nil {
		return m.Chain
	}
	return nil
}

func (x *AnyChainTx) GetCardano() *v1.Tx {
	if x, ok := x.GetChain().(*AnyChainTx_Cardano); ok {
		return x.Cardano
	}
	return nil
}

type isAnyChainTx_Chain interface {
	isAnyChainTx_Chain()
}

type AnyChainTx_Cardano struct {
	Cardano *v1.Tx `protobuf:"bytes,1,opt,name=cardano,proto3,oneof"` // A Cardano transaction.
}

func (*AnyChainTx_Cardano) isAnyChainTx_Chain() {}

// Response containing the matching transactions.
type WatchTxResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Action:
	//
	//	*WatchTxResponse_Apply
	//	*WatchTxResponse_Undo
	Action isWatchTxResponse_Action `protobuf_oneof:"action"`
}

func (x *WatchTxResponse) Reset() {
	*x = WatchTxResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *WatchTxResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*WatchTxResponse) ProtoMessage() {}

func (x *WatchTxResponse) ProtoReflect() protoreflect.Message {
	mi := &file_utxorpc_watch_v1_watch_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use WatchTxResponse.ProtoReflect.Descriptor instead.
func (*WatchTxResponse) Descriptor() ([]byte, []int) {
	return file_utxorpc_watch_v1_watch_proto_rawDescGZIP(), []int{4}
}

func (m *WatchTxResponse) GetAction() isWatchTxResponse_Action {
	if m != nil {
		return m.Action
	}
	return nil
}

func (x *WatchTxResponse) GetApply() *AnyChainTx {
	if x, ok := x.GetAction().(*WatchTxResponse_Apply); ok {
		return x.Apply
	}
	return nil
}

func (x *WatchTxResponse) GetUndo() *AnyChainTx {
	if x, ok := x.GetAction().(*WatchTxResponse_Undo); ok {
		return x.Undo
	}
	return nil
}

type isWatchTxResponse_Action interface {
	isWatchTxResponse_Action()
}

type WatchTxResponse_Apply struct {
	Apply *AnyChainTx `protobuf:"bytes,1,opt,name=apply,proto3,oneof"` // Apply this transaction.
}

type WatchTxResponse_Undo struct {
	Undo *AnyChainTx `protobuf:"bytes,2,opt,name=undo,proto3,oneof"` // Undo this transaction.
}

func (*WatchTxResponse_Apply) isWatchTxResponse_Action() {}

func (*WatchTxResponse_Undo) isWatchTxResponse_Action() {}

var File_utxorpc_watch_v1_watch_proto protoreflect.FileDescriptor

var file_utxorpc_watch_v1_watch_proto_rawDesc = []byte{
	0x0a, 0x1c, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2f, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2f,
	0x76, 0x31, 0x2f, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x10,
	0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76, 0x31,
	0x1a, 0x20, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75,
	0x66, 0x2f, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x5f, 0x6d, 0x61, 0x73, 0x6b, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x1a, 0x20, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2f, 0x63, 0x61, 0x72, 0x64,
	0x61, 0x6e, 0x6f, 0x2f, 0x76, 0x31, 0x2f, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x22, 0x57, 0x0a, 0x11, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e,
	0x54, 0x78, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x12, 0x39, 0x0a, 0x07, 0x63, 0x61, 0x72,
	0x64, 0x61, 0x6e, 0x6f, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x75, 0x74, 0x78,
	0x6f, 0x72, 0x70, 0x63, 0x2e, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x2e, 0x76, 0x31, 0x2e,
	0x54, 0x78, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x48, 0x00, 0x52, 0x07, 0x63, 0x61, 0x72,
	0x64, 0x61, 0x6e, 0x6f, 0x42, 0x07, 0x0a, 0x05, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x22, 0xe5, 0x01,
	0x0a, 0x0b, 0x54, 0x78, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x12, 0x39, 0x0a,
	0x05, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x23, 0x2e, 0x75,
	0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76, 0x31, 0x2e,
	0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e, 0x54, 0x78, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72,
	0x6e, 0x52, 0x05, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x12, 0x2f, 0x0a, 0x03, 0x6e, 0x6f, 0x74, 0x18,
	0x02, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e,
	0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76, 0x31, 0x2e, 0x54, 0x78, 0x50, 0x72, 0x65, 0x64, 0x69,
	0x63, 0x61, 0x74, 0x65, 0x52, 0x03, 0x6e, 0x6f, 0x74, 0x12, 0x34, 0x0a, 0x06, 0x61, 0x6c, 0x6c,
	0x5f, 0x6f, 0x66, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x75, 0x74, 0x78, 0x6f,
	0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76, 0x31, 0x2e, 0x54, 0x78, 0x50,
	0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x05, 0x61, 0x6c, 0x6c, 0x4f, 0x66, 0x12,
	0x34, 0x0a, 0x06, 0x61, 0x6e, 0x79, 0x5f, 0x6f, 0x66, 0x18, 0x04, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x1d, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e,
	0x76, 0x31, 0x2e, 0x54, 0x78, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x05,
	0x61, 0x6e, 0x79, 0x4f, 0x66, 0x22, 0x88, 0x01, 0x0a, 0x0e, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54,
	0x78, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x3b, 0x0a, 0x09, 0x70, 0x72, 0x65, 0x64,
	0x69, 0x63, 0x61, 0x74, 0x65, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x75, 0x74,
	0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76, 0x31, 0x2e, 0x54,
	0x78, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x09, 0x70, 0x72, 0x65, 0x64,
	0x69, 0x63, 0x61, 0x74, 0x65, 0x12, 0x39, 0x0a, 0x0a, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x5f, 0x6d,
	0x61, 0x73, 0x6b, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67,
	0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x46, 0x69, 0x65, 0x6c,
	0x64, 0x4d, 0x61, 0x73, 0x6b, 0x52, 0x09, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x4d, 0x61, 0x73, 0x6b,
	0x22, 0x49, 0x0a, 0x0a, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e, 0x54, 0x78, 0x12, 0x32,
	0x0a, 0x07, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x16, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e,
	0x6f, 0x2e, 0x76, 0x31, 0x2e, 0x54, 0x78, 0x48, 0x00, 0x52, 0x07, 0x63, 0x61, 0x72, 0x64, 0x61,
	0x6e, 0x6f, 0x42, 0x07, 0x0a, 0x05, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x22, 0x85, 0x01, 0x0a, 0x0f,
	0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x34, 0x0a, 0x05, 0x61, 0x70, 0x70, 0x6c, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1c,
	0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76,
	0x31, 0x2e, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e, 0x54, 0x78, 0x48, 0x00, 0x52, 0x05,
	0x61, 0x70, 0x70, 0x6c, 0x79, 0x12, 0x32, 0x0a, 0x04, 0x75, 0x6e, 0x64, 0x6f, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61,
	0x74, 0x63, 0x68, 0x2e, 0x76, 0x31, 0x2e, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e, 0x54,
	0x78, 0x48, 0x00, 0x52, 0x04, 0x75, 0x6e, 0x64, 0x6f, 0x42, 0x08, 0x0a, 0x06, 0x61, 0x63, 0x74,
	0x69, 0x6f, 0x6e, 0x32, 0x62, 0x0a, 0x0e, 0x54, 0x78, 0x57, 0x61, 0x74, 0x63, 0x68, 0x53, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x50, 0x0a, 0x07, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78,
	0x12, 0x20, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68,
	0x2e, 0x76, 0x31, 0x2e, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x1a, 0x21, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74,
	0x63, 0x68, 0x2e, 0x76, 0x31, 0x2e, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x30, 0x01, 0x42, 0xbf, 0x01, 0x0a, 0x14, 0x63, 0x6f, 0x6d, 0x2e,
	0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x76, 0x31,
	0x42, 0x0a, 0x57, 0x61, 0x74, 0x63, 0x68, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x39,
	0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x62, 0x75, 0x66, 0x62, 0x75,
	0x69, 0x6c, 0x64, 0x2f, 0x62, 0x75, 0x66, 0x2d, 0x74, 0x6f, 0x75, 0x72, 0x2f, 0x67, 0x65, 0x6e,
	0x2f, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2f, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2f, 0x76,
	0x31, 0x3b, 0x77, 0x61, 0x74, 0x63, 0x68, 0x76, 0x31, 0xa2, 0x02, 0x03, 0x55, 0x57, 0x58, 0xaa,
	0x02, 0x10, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x57, 0x61, 0x74, 0x63, 0x68, 0x2e,
	0x56, 0x31, 0xca, 0x02, 0x10, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x5c, 0x57, 0x61, 0x74,
	0x63, 0x68, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x1c, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x5c,
	0x57, 0x61, 0x74, 0x63, 0x68, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61,
	0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x12, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x3a, 0x3a,
	0x57, 0x61, 0x74, 0x63, 0x68, 0x3a, 0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_utxorpc_watch_v1_watch_proto_rawDescOnce sync.Once
	file_utxorpc_watch_v1_watch_proto_rawDescData = file_utxorpc_watch_v1_watch_proto_rawDesc
)

func file_utxorpc_watch_v1_watch_proto_rawDescGZIP() []byte {
	file_utxorpc_watch_v1_watch_proto_rawDescOnce.Do(func() {
		file_utxorpc_watch_v1_watch_proto_rawDescData = protoimpl.X.CompressGZIP(file_utxorpc_watch_v1_watch_proto_rawDescData)
	})
	return file_utxorpc_watch_v1_watch_proto_rawDescData
}

var file_utxorpc_watch_v1_watch_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_utxorpc_watch_v1_watch_proto_goTypes = []interface{}{
	(*AnyChainTxPattern)(nil),     // 0: utxorpc.watch.v1.AnyChainTxPattern
	(*TxPredicate)(nil),           // 1: utxorpc.watch.v1.TxPredicate
	(*WatchTxRequest)(nil),        // 2: utxorpc.watch.v1.WatchTxRequest
	(*AnyChainTx)(nil),            // 3: utxorpc.watch.v1.AnyChainTx
	(*WatchTxResponse)(nil),       // 4: utxorpc.watch.v1.WatchTxResponse
	(*v1.TxPattern)(nil),          // 5: utxorpc.cardano.v1.TxPattern
	(*fieldmaskpb.FieldMask)(nil), // 6: google.protobuf.FieldMask
	(*v1.Tx)(nil),                 // 7: utxorpc.cardano.v1.Tx
}
var file_utxorpc_watch_v1_watch_proto_depIdxs = []int32{
	5,  // 0: utxorpc.watch.v1.AnyChainTxPattern.cardano:type_name -> utxorpc.cardano.v1.TxPattern
	0,  // 1: utxorpc.watch.v1.TxPredicate.match:type_name -> utxorpc.watch.v1.AnyChainTxPattern
	1,  // 2: utxorpc.watch.v1.TxPredicate.not:type_name -> utxorpc.watch.v1.TxPredicate
	1,  // 3: utxorpc.watch.v1.TxPredicate.all_of:type_name -> utxorpc.watch.v1.TxPredicate
	1,  // 4: utxorpc.watch.v1.TxPredicate.any_of:type_name -> utxorpc.watch.v1.TxPredicate
	1,  // 5: utxorpc.watch.v1.WatchTxRequest.predicate:type_name -> utxorpc.watch.v1.TxPredicate
	6,  // 6: utxorpc.watch.v1.WatchTxRequest.field_mask:type_name -> google.protobuf.FieldMask
	7,  // 7: utxorpc.watch.v1.AnyChainTx.cardano:type_name -> utxorpc.cardano.v1.Tx
	3,  // 8: utxorpc.watch.v1.WatchTxResponse.apply:type_name -> utxorpc.watch.v1.AnyChainTx
	3,  // 9: utxorpc.watch.v1.WatchTxResponse.undo:type_name -> utxorpc.watch.v1.AnyChainTx
	2,  // 10: utxorpc.watch.v1.TxWatchService.WatchTx:input_type -> utxorpc.watch.v1.WatchTxRequest
	4,  // 11: utxorpc.watch.v1.TxWatchService.WatchTx:output_type -> utxorpc.watch.v1.WatchTxResponse
	11, // [11:12] is the sub-list for method output_type
	10, // [10:11] is the sub-list for method input_type
	10, // [10:10] is the sub-list for extension type_name
	10, // [10:10] is the sub-list for extension extendee
	0,  // [0:10] is the sub-list for field type_name
}

func init() { file_utxorpc_watch_v1_watch_proto_init() }
func file_utxorpc_watch_v1_watch_proto_init() {
	if File_utxorpc_watch_v1_watch_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_utxorpc_watch_v1_watch_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AnyChainTxPattern); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_utxorpc_watch_v1_watch_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*TxPredicate); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_utxorpc_watch_v1_watch_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*WatchTxRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_utxorpc_watch_v1_watch_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AnyChainTx); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_utxorpc_watch_v1_watch_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*WatchTxResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_utxorpc_watch_v1_watch_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*AnyChainTxPattern_Cardano)(nil),
	}
	file_utxorpc_watch_v1_watch_proto_msgTypes[3].OneofWrappers = []interface{}{
		(*AnyChainTx_Cardano)(nil),
	}
	file_utxorpc_watch_v1_watch_proto_msgTypes[4].OneofWrappers = []interface{}{
		(*WatchTxResponse_Apply)(nil),
		(*WatchTxResponse_Undo)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_utxorpc_watch_v1_watch_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   5,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_utxorpc_watch_v1_watch_proto_goTypes,
		DependencyIndexes: file_utxorpc_watch_v1_watch_proto_depIdxs,
		MessageInfos:      file_utxorpc_watch_v1_watch_proto_msgTypes,
	}.Build()
	File_utxorpc_watch_v1_watch_proto = out.File
	file_utxorpc_watch_v1_watch_proto_rawDesc = nil
	file_utxorpc_watch_v1_watch_proto_goTypes = nil
	file_utxorpc_watch_v1_watch_proto_depIdxs = nil
}
