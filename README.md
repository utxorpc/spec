# UTxO RPC Specs

This repository holds the source of truth for the UTxO RPC interface definition. The interface is defined as a set of proto files using proto3 syntax. These files are then used to auto generate code for each of the supported languages.

> [!TIP]
> This repo is aimed for maintainers working on the interface definition. If you're developer looking to interact with UTxO RPC, you should start in the [documentation site](https://utxorpc.org).

## Interface versioning

The interface itself will be organized into different proto packages that follow a particular naming convention:

```
utxorpc.{version}.{module}
```

The `{version}` component will contain a sequence number and an optional pre-release flag. For example:

- `v1alpha`: version `1` with `alpha` stability
- `v1beta`: version `1` with `beta` stability
- `v1`: stable version `1`

The `{module}` component represents a division of the interface into particular use-cases to facilitate access and avoid naming collisions. For example:

- `sync`: interface for chain synchronization
- `watch`: interface for reactive transaction notifications
- `cardano`: interface for a particular blockchain 

This repository will hold side-by-side versions. This means that instead of replacing existing definitions, new ones will be added to the repository while maintaining the previous ones.

## Stability guarantees

The pre-release flag in the version name describes the stability guarantee for that particular version. In the context of UTxO RPC, we'll use the following semantic:

- `alpha`: an exploration phase with no stability guarantees. Breaking changes will be common.
- `beta`: an stabilization phase with no stability guarantees. Breaking changes are allowed but uncommon.
- **[no flag]**: released version with strong stability guarantees. No breaking changes will occur. Non-breaking changes are allowed.

## File structure

The repository is organized by the following general structure:

- `proto`: interface definition files
  - `**`: folder structure that matches the proto package hierarchy
- `gen`: code-generation scaffold files
    - `{lang}`: scaffold for a particular language
- `buf.gen.yaml`: config file for code-generation

## Code generation

The serialization structures, client and server stubs for all supported languages are code-generated from this interface definition.

We use the [buf](https://buf.build) toolchain to simplify the process of working with proto files for multiple languages. The main configuration file is `buf.gen.yaml`.

The `/gen` folder contains the project scaffold for each supported language. These are a bunch of static files or templates to complement the auto-generated code from _buf_.

The generated code isn't committed to the git repo. A github workflow is used to generate, package and publish each of the language-specific libraries of the spec.

## Spec-wide versioning

The complete UTxO RPC spec holds different versions of the interface packages simultaneously. Since the auto-generated code follows the spec, language-specific packages will also hold different versions simultaneously.

This means that we need an independent versioning mechanism for the spec as a whole and for the language-specific packages that we publish.

The spec-wide version will follow semantic-versioning. It starts from version `1.0.0`. We'll increase each version component following this convention:

- **major**: upon a breaking change in any of the interface definitions or upon a breaking change in the api surface of the auto-generated code.
- **minor**: upon a non-breaking change in any of the interface definitions or upon a non-breaking change in the api surface of the auto-generated code.
- **patch** upon changes on the auto-generated code that have no impact whatsoever on the api surface.

> [!WARNING]
> Any package versions below `1.0.0` should be discarded since they are reserved for internal CI and testing procedures.

## Release process

The release cadence is not strict. Many independent changes can be stacked together before cutting a new release.

The maintainer in charge of the release will start the process locally by bumping the version in all required files and tagging the commit with the version label. This is automated via a tool called [bump-my-version](https://github.com/callowayproject/bump-my-version). To execute this step run the following command:

```sh
bump-my-version bump {component} --commit --tag
```

Where `{component}` needs to be replace by the semantic-versioning component that needs to be bumped. Allowed values are: `major`, `minor`, `patch`.

If successful, the local repo should hold a new commit tagged with the corresponding version. File inside the `/gen` folder that required a change should show the new version value.

The next step is to push the commit directly into the main branch including the new tag.

```sh
git push origin main --tags
```

The `main` branch is protected, only repo admins are allowed to execute this push.

The push will trigger the Github workflow named `release`. This workflow is in charge of code generation, packaging and publishing of each of the language-specific libraries.

The maintainer in charge of the release should monitor the workflow run and make sure that it reaches the end successfully.

## Language-specific packages

This is the list of language-specific packages generated by this spec along with the package registry where they are published.

| Lang | Package name                     | Registry              |
| ---- | -------------------------------- | --------------------- |
| Rust | `utxorpc-spec`                   | https://crates.io     |
| Node | `@utxorpc/spec`                  | https://npmjs.org     |
| Go   | `github.com/utxorpc/go-sdk/spec` | git                   |
| .NET | `Utxorpc.Spec`                   | https://www.nuget.org |

