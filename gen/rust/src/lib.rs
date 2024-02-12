// @generated
pub mod utxorpc {
    pub mod v1 {
        // @@protoc_insertion_point(attribute:utxorpc.v1.build)
        pub mod build {
            include!("utxorpc.v1.build.rs");
            // @@protoc_insertion_point(utxorpc.v1.build)
        }
    }
    pub mod v1alpha {
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.cardano)
        pub mod cardano {
            include!("utxorpc.v1alpha.cardano.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.cardano)
        }
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.submit)
        pub mod submit {
            include!("utxorpc.v1alpha.submit.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.submit)
        }
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.sync)
        pub mod sync {
            include!("utxorpc.v1alpha.sync.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.sync)
        }
        // @@protoc_insertion_point(attribute:utxorpc.v1alpha.watch)
        pub mod watch {
            include!("utxorpc.v1alpha.watch.rs");
            // @@protoc_insertion_point(utxorpc.v1alpha.watch)
        }
    }
}