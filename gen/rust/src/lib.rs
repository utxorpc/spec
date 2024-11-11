// @generated
pub mod utxorpc {
    pub mod v1alpha {
        #[cfg(feature = "utxorpc-v1alpha-cardano")]
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.cardano)
        pub mod cardano {
            include!("utxorpc.v1alpha.cardano.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.cardano)
        }
        #[cfg(feature = "utxorpc-v1alpha-query")]
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.query)
        pub mod query {
            include!("utxorpc.v1alpha.query.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.query)
        }
        #[cfg(feature = "utxorpc-v1alpha-submit")]
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.submit)
        pub mod submit {
            include!("utxorpc.v1alpha.submit.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.submit)
        }
        #[cfg(feature = "utxorpc-v1alpha-sync")]
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.sync)
        pub mod sync {
            include!("utxorpc.v1alpha.sync.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.sync)
        }
        #[cfg(feature = "utxorpc-v1alpha-watch")]
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.watch)
        pub mod watch {
            include!("utxorpc.v1alpha.watch.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.watch)
        }
    }
}