# UTxO RPC

## Code-gen

Requirements:

```sh
cargo install protoc-gen-prost
```

```sh
cargo install protoc-gen-crate
```

```sh
cargo install protoc-gen-tonic
```

## ARR

- the ledger IDL favors developer experience over direct 1:1 mappings into underlying blockchain primitives.
- wire performance / size is a priority, as long as it doesn't have a strong penalty over developer-experience.
- v1 will focus on compatibility with Ouroboros the protocols and the Cardano ledger, other UTxO-based protocols is a concern for future iterations.
- the ledger IDL represents the superset of structures from all Cardano eras. Structures missing in particular eras will be represented as null / missing values.