// @generated
/// Represents a tx pattern from any supported blockchain.
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AnyChainTxPattern {
    #[prost(oneof="any_chain_tx_pattern::Chain", tags="1")]
    pub chain: ::core::option::Option<any_chain_tx_pattern::Chain>,
}
/// Nested message and enum types in `AnyChainTxPattern`.
pub mod any_chain_tx_pattern {
    #[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Chain {
        /// A Cardano tx pattern.
        #[prost(message, tag="1")]
        Cardano(super::super::cardano::TxPattern),
    }
}
/// Represents a simple tx predicate that can composed to create more complext ones
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TxPredicate {
    /// Predicate is true if tx exhibits pattern.
    #[prost(message, optional, tag="1")]
    pub r#match: ::core::option::Option<AnyChainTxPattern>,
    /// Predicate is true if tx doesn't exhibit pattern.
    #[prost(message, repeated, tag="2")]
    pub not: ::prost::alloc::vec::Vec<TxPredicate>,
    /// Predicate is true if tx exhibits all of the patterns.
    #[prost(message, repeated, tag="3")]
    pub all_of: ::prost::alloc::vec::Vec<TxPredicate>,
    /// Predicate is true if tx exhibits any of the patterns.
    #[prost(message, repeated, tag="4")]
    pub any_of: ::prost::alloc::vec::Vec<TxPredicate>,
}
/// Request to watch transactions from the chain based on a set of predicates.
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WatchTxRequest {
    /// Predicate to filter transactions by.
    #[prost(message, optional, tag="1")]
    pub predicate: ::core::option::Option<TxPredicate>,
    /// Field mask to selectively return fields.
    #[prost(message, optional, tag="2")]
    pub field_mask: ::core::option::Option<::pbjson_types::FieldMask>,
}
/// Represents a transaction from any supported blockchain.
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AnyChainTx {
    #[prost(oneof="any_chain_tx::Chain", tags="1")]
    pub chain: ::core::option::Option<any_chain_tx::Chain>,
}
/// Nested message and enum types in `AnyChainTx`.
pub mod any_chain_tx {
    #[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Chain {
        /// A Cardano transaction.
        #[prost(message, tag="1")]
        Cardano(super::super::cardano::Tx),
    }
}
/// Response containing the matching chain transactions.
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WatchTxResponse {
    #[prost(oneof="watch_tx_response::Action", tags="1, 2")]
    pub action: ::core::option::Option<watch_tx_response::Action>,
}
/// Nested message and enum types in `WatchTxResponse`.
pub mod watch_tx_response {
    #[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Action {
        /// Apply this transaction.
        #[prost(message, tag="1")]
        Apply(super::AnyChainTx),
        /// Undo this transaction.
        #[prost(message, tag="2")]
        Undo(super::AnyChainTx),
    }
}
/// Encoded file descriptor set for the `utxorpc.v1alpha.watch` package
pub const FILE_DESCRIPTOR_SET: &[u8] = &[
    0x0a, 0xb2, 0x17, 0x0a, 0x21, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2f, 0x76, 0x31, 0x61,
    0x6c, 0x70, 0x68, 0x61, 0x2f, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2f, 0x77, 0x61, 0x74, 0x63, 0x68,
    0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x15, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e,
    0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x1a, 0x20, 0x67,
    0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x66,
    0x69, 0x65, 0x6c, 0x64, 0x5f, 0x6d, 0x61, 0x73, 0x6b, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a,
    0x25, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2f, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61,
    0x2f, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x2f, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f,
    0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x5c, 0x0a, 0x11, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61,
    0x69, 0x6e, 0x54, 0x78, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x12, 0x3e, 0x0a, 0x07, 0x63,
    0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x22, 0x2e, 0x75,
    0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x63,
    0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x2e, 0x54, 0x78, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e,
    0x48, 0x00, 0x52, 0x07, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x42, 0x07, 0x0a, 0x05, 0x63,
    0x68, 0x61, 0x69, 0x6e, 0x22, 0xf9, 0x01, 0x0a, 0x0b, 0x54, 0x78, 0x50, 0x72, 0x65, 0x64, 0x69,
    0x63, 0x61, 0x74, 0x65, 0x12, 0x3e, 0x0a, 0x05, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x18, 0x01, 0x20,
    0x01, 0x28, 0x0b, 0x32, 0x28, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31,
    0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x41, 0x6e, 0x79, 0x43,
    0x68, 0x61, 0x69, 0x6e, 0x54, 0x78, 0x50, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x52, 0x05, 0x6d,
    0x61, 0x74, 0x63, 0x68, 0x12, 0x34, 0x0a, 0x03, 0x6e, 0x6f, 0x74, 0x18, 0x02, 0x20, 0x03, 0x28,
    0x0b, 0x32, 0x22, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31, 0x61, 0x6c,
    0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x54, 0x78, 0x50, 0x72, 0x65, 0x64,
    0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x03, 0x6e, 0x6f, 0x74, 0x12, 0x39, 0x0a, 0x06, 0x61, 0x6c,
    0x6c, 0x5f, 0x6f, 0x66, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x22, 0x2e, 0x75, 0x74, 0x78,
    0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74,
    0x63, 0x68, 0x2e, 0x54, 0x78, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x05,
    0x61, 0x6c, 0x6c, 0x4f, 0x66, 0x12, 0x39, 0x0a, 0x06, 0x61, 0x6e, 0x79, 0x5f, 0x6f, 0x66, 0x18,
    0x04, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x22, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e,
    0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x54, 0x78,
    0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x05, 0x61, 0x6e, 0x79, 0x4f, 0x66,
    0x22, 0x8d, 0x01, 0x0a, 0x0e, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x71, 0x75,
    0x65, 0x73, 0x74, 0x12, 0x40, 0x0a, 0x09, 0x70, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65,
    0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x22, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63,
    0x2e, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x54,
    0x78, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x52, 0x09, 0x70, 0x72, 0x65, 0x64,
    0x69, 0x63, 0x61, 0x74, 0x65, 0x12, 0x39, 0x0a, 0x0a, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x5f, 0x6d,
    0x61, 0x73, 0x6b, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67,
    0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x46, 0x69, 0x65, 0x6c,
    0x64, 0x4d, 0x61, 0x73, 0x6b, 0x52, 0x09, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x4d, 0x61, 0x73, 0x6b,
    0x22, 0x4e, 0x0a, 0x0a, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e, 0x54, 0x78, 0x12, 0x37,
    0x0a, 0x07, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32,
    0x1b, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68,
    0x61, 0x2e, 0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x2e, 0x54, 0x78, 0x48, 0x00, 0x52, 0x07,
    0x63, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x42, 0x07, 0x0a, 0x05, 0x63, 0x68, 0x61, 0x69, 0x6e,
    0x22, 0x8f, 0x01, 0x0a, 0x0f, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x73, 0x70,
    0x6f, 0x6e, 0x73, 0x65, 0x12, 0x39, 0x0a, 0x05, 0x61, 0x70, 0x70, 0x6c, 0x79, 0x18, 0x01, 0x20,
    0x01, 0x28, 0x0b, 0x32, 0x21, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31,
    0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x41, 0x6e, 0x79, 0x43,
    0x68, 0x61, 0x69, 0x6e, 0x54, 0x78, 0x48, 0x00, 0x52, 0x05, 0x61, 0x70, 0x70, 0x6c, 0x79, 0x12,
    0x37, 0x0a, 0x04, 0x75, 0x6e, 0x64, 0x6f, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x21, 0x2e,
    0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e,
    0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x41, 0x6e, 0x79, 0x43, 0x68, 0x61, 0x69, 0x6e, 0x54, 0x78,
    0x48, 0x00, 0x52, 0x04, 0x75, 0x6e, 0x64, 0x6f, 0x42, 0x08, 0x0a, 0x06, 0x61, 0x63, 0x74, 0x69,
    0x6f, 0x6e, 0x32, 0x6a, 0x0a, 0x0c, 0x57, 0x61, 0x74, 0x63, 0x68, 0x53, 0x65, 0x72, 0x76, 0x69,
    0x63, 0x65, 0x12, 0x5a, 0x0a, 0x07, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x12, 0x25, 0x2e,
    0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e,
    0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x57, 0x61, 0x74, 0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x71,
    0x75, 0x65, 0x73, 0x74, 0x1a, 0x26, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76,
    0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x2e, 0x57, 0x61, 0x74,
    0x63, 0x68, 0x54, 0x78, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x30, 0x01, 0x42, 0xd3,
    0x01, 0x0a, 0x19, 0x63, 0x6f, 0x6d, 0x2e, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2e, 0x76,
    0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x77, 0x61, 0x74, 0x63, 0x68, 0x42, 0x0a, 0x57, 0x61,
    0x74, 0x63, 0x68, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x34, 0x67, 0x69, 0x74, 0x68,
    0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x75, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x2f, 0x67,
    0x6f, 0x2d, 0x73, 0x64, 0x6b, 0x2f, 0x73, 0x70, 0x65, 0x63, 0x2f, 0x75, 0x74, 0x78, 0x6f, 0x72,
    0x70, 0x63, 0x2f, 0x76, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2f, 0x77, 0x61, 0x74, 0x63, 0x68,
    0xa2, 0x02, 0x03, 0x55, 0x56, 0x57, 0xaa, 0x02, 0x15, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63,
    0x2e, 0x56, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x2e, 0x57, 0x61, 0x74, 0x63, 0x68, 0xca, 0x02,
    0x15, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63, 0x5c, 0x56, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61,
    0x5c, 0x57, 0x61, 0x74, 0x63, 0x68, 0xe2, 0x02, 0x21, 0x55, 0x74, 0x78, 0x6f, 0x72, 0x70, 0x63,
    0x5c, 0x56, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x5c, 0x57, 0x61, 0x74, 0x63, 0x68, 0x5c, 0x47,
    0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x17, 0x55, 0x74, 0x78,
    0x6f, 0x72, 0x70, 0x63, 0x3a, 0x3a, 0x56, 0x31, 0x61, 0x6c, 0x70, 0x68, 0x61, 0x3a, 0x3a, 0x57,
    0x61, 0x74, 0x63, 0x68, 0x4a, 0x96, 0x0e, 0x0a, 0x06, 0x12, 0x04, 0x00, 0x00, 0x2e, 0x01, 0x0a,
    0x08, 0x0a, 0x01, 0x0c, 0x12, 0x03, 0x00, 0x00, 0x12, 0x0a, 0x08, 0x0a, 0x01, 0x02, 0x12, 0x03,
    0x02, 0x00, 0x1e, 0x0a, 0x09, 0x0a, 0x02, 0x03, 0x00, 0x12, 0x03, 0x04, 0x00, 0x2a, 0x0a, 0x09,
    0x0a, 0x02, 0x03, 0x01, 0x12, 0x03, 0x05, 0x00, 0x2f, 0x0a, 0x44, 0x0a, 0x02, 0x04, 0x00, 0x12,
    0x04, 0x08, 0x00, 0x0c, 0x01, 0x1a, 0x38, 0x20, 0x52, 0x65, 0x70, 0x72, 0x65, 0x73, 0x65, 0x6e,
    0x74, 0x73, 0x20, 0x61, 0x20, 0x74, 0x78, 0x20, 0x70, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x20,
    0x66, 0x72, 0x6f, 0x6d, 0x20, 0x61, 0x6e, 0x79, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74,
    0x65, 0x64, 0x20, 0x62, 0x6c, 0x6f, 0x63, 0x6b, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x2e, 0x0a, 0x0a,
    0x0a, 0x0a, 0x03, 0x04, 0x00, 0x01, 0x12, 0x03, 0x08, 0x08, 0x19, 0x0a, 0x0c, 0x0a, 0x04, 0x04,
    0x00, 0x08, 0x00, 0x12, 0x04, 0x09, 0x02, 0x0b, 0x03, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x00, 0x08,
    0x00, 0x01, 0x12, 0x03, 0x09, 0x08, 0x0d, 0x0a, 0x24, 0x0a, 0x04, 0x04, 0x00, 0x02, 0x00, 0x12,
    0x03, 0x0a, 0x04, 0x32, 0x22, 0x17, 0x20, 0x41, 0x20, 0x43, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f,
    0x20, 0x74, 0x78, 0x20, 0x70, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a,
    0x05, 0x04, 0x00, 0x02, 0x00, 0x06, 0x12, 0x03, 0x0a, 0x04, 0x25, 0x0a, 0x0c, 0x0a, 0x05, 0x04,
    0x00, 0x02, 0x00, 0x01, 0x12, 0x03, 0x0a, 0x26, 0x2d, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x00, 0x02,
    0x00, 0x03, 0x12, 0x03, 0x0a, 0x30, 0x31, 0x0a, 0x5d, 0x0a, 0x02, 0x04, 0x01, 0x12, 0x04, 0x0f,
    0x00, 0x14, 0x01, 0x1a, 0x51, 0x20, 0x52, 0x65, 0x70, 0x72, 0x65, 0x73, 0x65, 0x6e, 0x74, 0x73,
    0x20, 0x61, 0x20, 0x73, 0x69, 0x6d, 0x70, 0x6c, 0x65, 0x20, 0x74, 0x78, 0x20, 0x70, 0x72, 0x65,
    0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20, 0x74, 0x68, 0x61, 0x74, 0x20, 0x63, 0x61, 0x6e, 0x20,
    0x63, 0x6f, 0x6d, 0x70, 0x6f, 0x73, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x72, 0x65, 0x61,
    0x74, 0x65, 0x20, 0x6d, 0x6f, 0x72, 0x65, 0x20, 0x63, 0x6f, 0x6d, 0x70, 0x6c, 0x65, 0x78, 0x74,
    0x20, 0x6f, 0x6e, 0x65, 0x73, 0x0a, 0x0a, 0x0a, 0x0a, 0x03, 0x04, 0x01, 0x01, 0x12, 0x03, 0x0f,
    0x08, 0x13, 0x0a, 0x38, 0x0a, 0x04, 0x04, 0x01, 0x02, 0x00, 0x12, 0x03, 0x10, 0x02, 0x1e, 0x22,
    0x2b, 0x20, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20, 0x69, 0x73, 0x20, 0x74,
    0x72, 0x75, 0x65, 0x20, 0x69, 0x66, 0x20, 0x74, 0x78, 0x20, 0x65, 0x78, 0x68, 0x69, 0x62, 0x69,
    0x74, 0x73, 0x20, 0x70, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05,
    0x04, 0x01, 0x02, 0x00, 0x06, 0x12, 0x03, 0x10, 0x02, 0x13, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01,
    0x02, 0x00, 0x01, 0x12, 0x03, 0x10, 0x14, 0x19, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x00,
    0x03, 0x12, 0x03, 0x10, 0x1c, 0x1d, 0x0a, 0x3f, 0x0a, 0x04, 0x04, 0x01, 0x02, 0x01, 0x12, 0x03,
    0x11, 0x02, 0x1f, 0x22, 0x32, 0x20, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20,
    0x69, 0x73, 0x20, 0x74, 0x72, 0x75, 0x65, 0x20, 0x69, 0x66, 0x20, 0x74, 0x78, 0x20, 0x64, 0x6f,
    0x65, 0x73, 0x6e, 0x27, 0x74, 0x20, 0x65, 0x78, 0x68, 0x69, 0x62, 0x69, 0x74, 0x20, 0x70, 0x61,
    0x74, 0x74, 0x65, 0x72, 0x6e, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x01, 0x04,
    0x12, 0x03, 0x11, 0x02, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x01, 0x06, 0x12, 0x03,
    0x11, 0x0b, 0x16, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x01, 0x01, 0x12, 0x03, 0x11, 0x17,
    0x1a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x01, 0x03, 0x12, 0x03, 0x11, 0x1d, 0x1e, 0x0a,
    0x44, 0x0a, 0x04, 0x04, 0x01, 0x02, 0x02, 0x12, 0x03, 0x12, 0x02, 0x22, 0x22, 0x37, 0x20, 0x50,
    0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20, 0x69, 0x73, 0x20, 0x74, 0x72, 0x75, 0x65,
    0x20, 0x69, 0x66, 0x20, 0x74, 0x78, 0x20, 0x65, 0x78, 0x68, 0x69, 0x62, 0x69, 0x74, 0x73, 0x20,
    0x61, 0x6c, 0x6c, 0x20, 0x6f, 0x66, 0x20, 0x74, 0x68, 0x65, 0x20, 0x70, 0x61, 0x74, 0x74, 0x65,
    0x72, 0x6e, 0x73, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x02, 0x04, 0x12, 0x03,
    0x12, 0x02, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x02, 0x06, 0x12, 0x03, 0x12, 0x0b,
    0x16, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x02, 0x01, 0x12, 0x03, 0x12, 0x17, 0x1d, 0x0a,
    0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x02, 0x03, 0x12, 0x03, 0x12, 0x20, 0x21, 0x0a, 0x44, 0x0a,
    0x04, 0x04, 0x01, 0x02, 0x03, 0x12, 0x03, 0x13, 0x02, 0x22, 0x22, 0x37, 0x20, 0x50, 0x72, 0x65,
    0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20, 0x69, 0x73, 0x20, 0x74, 0x72, 0x75, 0x65, 0x20, 0x69,
    0x66, 0x20, 0x74, 0x78, 0x20, 0x65, 0x78, 0x68, 0x69, 0x62, 0x69, 0x74, 0x73, 0x20, 0x61, 0x6e,
    0x79, 0x20, 0x6f, 0x66, 0x20, 0x74, 0x68, 0x65, 0x20, 0x70, 0x61, 0x74, 0x74, 0x65, 0x72, 0x6e,
    0x73, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x03, 0x04, 0x12, 0x03, 0x13, 0x02,
    0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x03, 0x06, 0x12, 0x03, 0x13, 0x0b, 0x16, 0x0a,
    0x0c, 0x0a, 0x05, 0x04, 0x01, 0x02, 0x03, 0x01, 0x12, 0x03, 0x13, 0x17, 0x1d, 0x0a, 0x0c, 0x0a,
    0x05, 0x04, 0x01, 0x02, 0x03, 0x03, 0x12, 0x03, 0x13, 0x20, 0x21, 0x0a, 0x58, 0x0a, 0x02, 0x04,
    0x02, 0x12, 0x04, 0x17, 0x00, 0x1a, 0x01, 0x1a, 0x4c, 0x20, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
    0x74, 0x20, 0x74, 0x6f, 0x20, 0x77, 0x61, 0x74, 0x63, 0x68, 0x20, 0x74, 0x72, 0x61, 0x6e, 0x73,
    0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x74, 0x68, 0x65,
    0x20, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x20, 0x62, 0x61, 0x73, 0x65, 0x64, 0x20, 0x6f, 0x6e, 0x20,
    0x61, 0x20, 0x73, 0x65, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x70, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61,
    0x74, 0x65, 0x73, 0x2e, 0x0a, 0x0a, 0x0a, 0x0a, 0x03, 0x04, 0x02, 0x01, 0x12, 0x03, 0x17, 0x08,
    0x16, 0x0a, 0x33, 0x0a, 0x04, 0x04, 0x02, 0x02, 0x00, 0x12, 0x03, 0x18, 0x02, 0x1c, 0x22, 0x26,
    0x20, 0x50, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x20, 0x74, 0x6f, 0x20, 0x66, 0x69,
    0x6c, 0x74, 0x65, 0x72, 0x20, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e,
    0x73, 0x20, 0x62, 0x79, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x02, 0x02, 0x00, 0x06, 0x12,
    0x03, 0x18, 0x02, 0x0d, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x02, 0x02, 0x00, 0x01, 0x12, 0x03, 0x18,
    0x0e, 0x17, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x02, 0x02, 0x00, 0x03, 0x12, 0x03, 0x18, 0x1a, 0x1b,
    0x0a, 0x37, 0x0a, 0x04, 0x04, 0x02, 0x02, 0x01, 0x12, 0x03, 0x19, 0x02, 0x2b, 0x22, 0x2a, 0x20,
    0x46, 0x69, 0x65, 0x6c, 0x64, 0x20, 0x6d, 0x61, 0x73, 0x6b, 0x20, 0x74, 0x6f, 0x20, 0x73, 0x65,
    0x6c, 0x65, 0x63, 0x74, 0x69, 0x76, 0x65, 0x6c, 0x79, 0x20, 0x72, 0x65, 0x74, 0x75, 0x72, 0x6e,
    0x20, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x73, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x02, 0x02,
    0x01, 0x06, 0x12, 0x03, 0x19, 0x02, 0x1b, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x02, 0x02, 0x01, 0x01,
    0x12, 0x03, 0x19, 0x1c, 0x26, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x02, 0x02, 0x01, 0x03, 0x12, 0x03,
    0x19, 0x29, 0x2a, 0x0a, 0x45, 0x0a, 0x02, 0x04, 0x03, 0x12, 0x04, 0x1d, 0x00, 0x21, 0x01, 0x1a,
    0x39, 0x20, 0x52, 0x65, 0x70, 0x72, 0x65, 0x73, 0x65, 0x6e, 0x74, 0x73, 0x20, 0x61, 0x20, 0x74,
    0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20,
    0x61, 0x6e, 0x79, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x65, 0x64, 0x20, 0x62, 0x6c,
    0x6f, 0x63, 0x6b, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x2e, 0x0a, 0x0a, 0x0a, 0x0a, 0x03, 0x04, 0x03,
    0x01, 0x12, 0x03, 0x1d, 0x08, 0x12, 0x0a, 0x0c, 0x0a, 0x04, 0x04, 0x03, 0x08, 0x00, 0x12, 0x04,
    0x1e, 0x02, 0x20, 0x03, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x03, 0x08, 0x00, 0x01, 0x12, 0x03, 0x1e,
    0x08, 0x0d, 0x0a, 0x25, 0x0a, 0x04, 0x04, 0x03, 0x02, 0x00, 0x12, 0x03, 0x1f, 0x04, 0x2b, 0x22,
    0x18, 0x20, 0x41, 0x20, 0x43, 0x61, 0x72, 0x64, 0x61, 0x6e, 0x6f, 0x20, 0x74, 0x72, 0x61, 0x6e,
    0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x03, 0x02,
    0x00, 0x06, 0x12, 0x03, 0x1f, 0x04, 0x1e, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x03, 0x02, 0x00, 0x01,
    0x12, 0x03, 0x1f, 0x1f, 0x26, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x03, 0x02, 0x00, 0x03, 0x12, 0x03,
    0x1f, 0x29, 0x2a, 0x0a, 0x42, 0x0a, 0x02, 0x04, 0x04, 0x12, 0x04, 0x24, 0x00, 0x29, 0x01, 0x1a,
    0x36, 0x20, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x20, 0x63, 0x6f, 0x6e, 0x74, 0x61,
    0x69, 0x6e, 0x69, 0x6e, 0x67, 0x20, 0x74, 0x68, 0x65, 0x20, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x69,
    0x6e, 0x67, 0x20, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x20, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63,
    0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2e, 0x0a, 0x0a, 0x0a, 0x0a, 0x03, 0x04, 0x04, 0x01, 0x12, 0x03,
    0x24, 0x08, 0x17, 0x0a, 0x0c, 0x0a, 0x04, 0x04, 0x04, 0x08, 0x00, 0x12, 0x04, 0x25, 0x02, 0x28,
    0x03, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x08, 0x00, 0x01, 0x12, 0x03, 0x25, 0x08, 0x0e, 0x0a,
    0x26, 0x0a, 0x04, 0x04, 0x04, 0x02, 0x00, 0x12, 0x03, 0x26, 0x04, 0x19, 0x22, 0x19, 0x20, 0x41,
    0x70, 0x70, 0x6c, 0x79, 0x20, 0x74, 0x68, 0x69, 0x73, 0x20, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61,
    0x63, 0x74, 0x69, 0x6f, 0x6e, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x02, 0x00, 0x06,
    0x12, 0x03, 0x26, 0x04, 0x0e, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x02, 0x00, 0x01, 0x12, 0x03,
    0x26, 0x0f, 0x14, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x02, 0x00, 0x03, 0x12, 0x03, 0x26, 0x17,
    0x18, 0x0a, 0x25, 0x0a, 0x04, 0x04, 0x04, 0x02, 0x01, 0x12, 0x03, 0x27, 0x04, 0x18, 0x22, 0x18,
    0x20, 0x55, 0x6e, 0x64, 0x6f, 0x20, 0x74, 0x68, 0x69, 0x73, 0x20, 0x74, 0x72, 0x61, 0x6e, 0x73,
    0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x02, 0x01,
    0x06, 0x12, 0x03, 0x27, 0x04, 0x0e, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x02, 0x01, 0x01, 0x12,
    0x03, 0x27, 0x0f, 0x13, 0x0a, 0x0c, 0x0a, 0x05, 0x04, 0x04, 0x02, 0x01, 0x03, 0x12, 0x03, 0x27,
    0x16, 0x17, 0x0a, 0x4f, 0x0a, 0x02, 0x06, 0x00, 0x12, 0x04, 0x2c, 0x00, 0x2e, 0x01, 0x1a, 0x43,
    0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x20, 0x64, 0x65, 0x66, 0x69, 0x6e, 0x69, 0x74,
    0x69, 0x6f, 0x6e, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x77, 0x61, 0x74, 0x63, 0x68, 0x69, 0x6e, 0x67,
    0x20, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x20, 0x62, 0x61,
    0x73, 0x65, 0x64, 0x20, 0x6f, 0x6e, 0x20, 0x70, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65,
    0x73, 0x2e, 0x0a, 0x0a, 0x0a, 0x0a, 0x03, 0x06, 0x00, 0x01, 0x12, 0x03, 0x2c, 0x08, 0x14, 0x0a,
    0x54, 0x0a, 0x04, 0x06, 0x00, 0x02, 0x00, 0x12, 0x03, 0x2d, 0x02, 0x3f, 0x22, 0x47, 0x20, 0x53,
    0x74, 0x72, 0x65, 0x61, 0x6d, 0x20, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f,
    0x6e, 0x73, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x74, 0x68, 0x65, 0x20, 0x63, 0x68, 0x61, 0x69,
    0x6e, 0x20, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x69, 0x6e, 0x67, 0x20, 0x74, 0x68, 0x65, 0x20, 0x73,
    0x70, 0x65, 0x63, 0x69, 0x66, 0x69, 0x65, 0x64, 0x20, 0x70, 0x72, 0x65, 0x64, 0x69, 0x63, 0x61,
    0x74, 0x65, 0x73, 0x2e, 0x0a, 0x0a, 0x0c, 0x0a, 0x05, 0x06, 0x00, 0x02, 0x00, 0x01, 0x12, 0x03,
    0x2d, 0x06, 0x0d, 0x0a, 0x0c, 0x0a, 0x05, 0x06, 0x00, 0x02, 0x00, 0x02, 0x12, 0x03, 0x2d, 0x0e,
    0x1c, 0x0a, 0x0c, 0x0a, 0x05, 0x06, 0x00, 0x02, 0x00, 0x06, 0x12, 0x03, 0x2d, 0x27, 0x2d, 0x0a,
    0x0c, 0x0a, 0x05, 0x06, 0x00, 0x02, 0x00, 0x03, 0x12, 0x03, 0x2d, 0x2e, 0x3d, 0x62, 0x06, 0x70,
    0x72, 0x6f, 0x74, 0x6f, 0x33,
];
include!("utxorpc.v1alpha.watch.serde.rs");
include!("utxorpc.v1alpha.watch.tonic.rs");
// @@protoc_insertion_point(module)