// @generated
pub mod utxorpc {
    pub mod v1alpha {
        #[cfg(feature = "utxorpc-v1alpha-bitcoin")]
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.bitcoin)
        pub mod bitcoin {
            include!("utxorpc.v1alpha.bitcoin.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.bitcoin)
        }
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
    pub mod v1beta {
        #[cfg(feature = "utxorpc-v1beta-bitcoin")]
        // @@protoc_insertion_point(attribute:utxorpc.v1beta.bitcoin)
        pub mod bitcoin {
            include!("utxorpc.v1beta.bitcoin.rs");
            // @@protoc_insertion_point(utxorpc.v1beta.bitcoin)
        }
        #[cfg(feature = "utxorpc-v1beta-cardano")]
        // @@protoc_insertion_point(attribute:utxorpc.v1beta.cardano)
        pub mod cardano {
            include!("utxorpc.v1beta.cardano.rs");
            // @@protoc_insertion_point(utxorpc.v1beta.cardano)
        }
        #[cfg(feature = "utxorpc-v1beta-query")]
        // @@protoc_insertion_point(attribute:utxorpc.v1beta.query)
        pub mod query {
            include!("utxorpc.v1beta.query.rs");
            // @@protoc_insertion_point(utxorpc.v1beta.query)
        }
        #[cfg(feature = "utxorpc-v1beta-submit")]
        // @@protoc_insertion_point(attribute:utxorpc.v1beta.submit)
        pub mod submit {
            include!("utxorpc.v1beta.submit.rs");
            // @@protoc_insertion_point(utxorpc.v1beta.submit)
        }
        #[cfg(feature = "utxorpc-v1beta-sync")]
        // @@protoc_insertion_point(attribute:utxorpc.v1beta.sync)
        pub mod sync {
            include!("utxorpc.v1beta.sync.rs");
            // @@protoc_insertion_point(utxorpc.v1beta.sync)
        }
        #[cfg(feature = "utxorpc-v1beta-watch")]
        // @@protoc_insertion_point(attribute:utxorpc.v1beta.watch)
        pub mod watch {
            include!("utxorpc.v1beta.watch.rs");
            // @@protoc_insertion_point(utxorpc.v1beta.watch)
        }
    }
}