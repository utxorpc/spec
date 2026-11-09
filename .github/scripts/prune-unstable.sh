#!/usr/bin/env bash
#
# Strips unstable interface versions out of the language scaffolds so that a
# stable-channel build neither generates nor packages them.
#
#   .github/scripts/prune-unstable.sh v1 [v2 ...]
#
# Only the hand-maintained scaffold files under gen/ name interface versions
# explicitly. Everything else (Go, Python, docs, OpenAPI, JSON schema, the Rust
# lib.rs and the generated part of the Rust feature list) follows from what buf
# generates, which the caller restricts with --exclude-path.
#
# This edits the working tree of a CI checkout; nothing it changes is meant to
# be committed. Every edit must match something: a miss means the scaffold
# drifted and this script needs updating, so it fails rather than ship a
# half-pruned package.

set -euo pipefail

cd "$(dirname "$0")/../.."

fail() {
  echo "prune-unstable: $*" >&2
  exit 1
}

# delete_lines FILE REGEX: drop every line of FILE matching the perl REGEX,
# failing if none does.
delete_lines() {
  local file=$1
  PATTERN=$2 perl -ne '$m = 1 if /$ENV{PATTERN}/; END { exit($m ? 0 : 1) }' "$file" \
    || fail "$file: no line matches /$2/"
  PATTERN=$2 perl -ni -e 'print unless /$ENV{PATTERN}/' "$file"
}

# drop_ledger_feature FEATURE: remove one entry from the hand-written
# `ledgers = [...]` feature in the Rust manifest.
drop_ledger_feature() {
  local file=gen/rust/Cargo.toml
  FEATURE=$1 perl -ne '$m = 1 if /^ledgers = .*"\Q$ENV{FEATURE}\E"/; END { exit($m ? 0 : 1) }' "$file" \
    || fail "$file: the ledgers feature does not list \"$1\""
  FEATURE=$1 perl -pi -e 'if (/^ledgers = /) { s/,\s*"\Q$ENV{FEATURE}\E"//; s/"\Q$ENV{FEATURE}\E",?\s*//; }' "$file"
}

if [[ $# -eq 0 ]]; then
  echo "prune-unstable: no versions given, nothing to prune"
  exit 0
fi

for version in "$@"; do
  [[ $version =~ ^v[0-9]+[a-z]*$ ]] || fail "not an interface version: '$version'"
  [[ -d proto/utxorpc/$version ]] || fail "proto/utxorpc/$version does not exist"

  echo "prune-unstable: removing $version from the scaffolds"

  # node: the per-version barrel file and its re-export from the root index.
  [[ -f gen/node/src/$version.ts ]] || fail "gen/node/src/$version.ts does not exist"
  rm "gen/node/src/$version.ts"
  delete_lines gen/node/src/index.ts "^export \\* as $version from \"\\./$version\\.js\";\$"

  # haskell: exposed-modules names every generated module, and module names
  # capitalise the package segment (v1 -> V1). The trailing dot keeps v1 from
  # matching V1alpha or V1beta.
  delete_lines gen/haskell/utxorpc.cabal "^\\s+Proto\\.Utxorpc\\.V${version#v}\\."

  # rust: the generated features below @@protoc_deletion_point are rebuilt by
  # protoc-gen-prost-crate; only the hand-written `ledgers` needs editing.
  drop_ledger_feature "utxorpc-$version-cardano"
done
