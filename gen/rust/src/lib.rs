// @generated
pub mod utxorpc {
    pub mod state {
        #[cfg(feature = "utxorpc-state-v1")]
        // @@protoc_insertion_point(attribute:utxorpc.state.v1)
        pub mod v1 {
            include!("utxorpc.state.v1.rs");
            // @@protoc_insertion_point(utxorpc.state.v1)
        }
    }
    pub mod sync {
        #[cfg(feature = "utxorpc-sync-v1")]
        // @@protoc_insertion_point(attribute:utxorpc.sync.v1)
        pub mod v1 {
            include!("utxorpc.sync.v1.rs");
            // @@protoc_insertion_point(utxorpc.sync.v1)
        }
    }
    pub mod watch {
        #[cfg(feature = "utxorpc-watch-v1")]
        // @@protoc_insertion_point(attribute:utxorpc.watch.v1)
        pub mod v1 {
            include!("utxorpc.watch.v1.rs");
            // @@protoc_insertion_point(utxorpc.watch.v1)
        }
    }
}