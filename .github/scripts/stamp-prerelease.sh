#!/usr/bin/env bash
#
# Stamps a next-channel pre-release version into the package manifests.
#
#   .github/scripts/stamp-prerelease.sh v0.20.0-next.1
#
# The committed manifests always carry the last stable version (bumped by
# bump-my-version, see .bumpversion.toml). A pre-release is cut by tagging a
# commit, with no bump commit, so the version is written here into the CI
# checkout only and never committed.
#
# Each registry gets the spelling it treats as a pre-release:
#
#   crates.io, npm, NuGet, Go   0.20.0-next.1  (SemVer pre-release)
#   PyPI                        0.20.0.dev1    (PEP 440 development release)
#   Hackage                     not stamped    (no pre-release concept; the
#                                               next channel does not upload)

set -euo pipefail

cd "$(dirname "$0")/../.."

fail() {
  echo "stamp-prerelease: $*" >&2
  exit 1
}

tag=${1:-}
[[ $tag =~ ^v([0-9]+\.[0-9]+\.[0-9]+)-next\.([0-9]+)$ ]] \
  || fail "expected a tag like v0.20.0-next.1, got '$tag'"

base=${BASH_REMATCH[1]}
serial=${BASH_REMATCH[2]}
semver="$base-next.$serial"
pep440="$base.dev$serial"

current=$(sed -nE 's/^current_version = "([^"]+)"$/\1/p' .bumpversion.toml)
[[ -n $current ]] || fail ".bumpversion.toml: current_version not found"

# stamp FILE LINE_REGEX NEW_VERSION: in the single line of FILE matching the
# perl LINE_REGEX, replace the current version with NEW_VERSION.
stamp() {
  local file=$1
  LINE=$2 CUR=$current NEW=$3 perl -pi -e '
    if (/$ENV{LINE}/ && s/\Q$ENV{CUR}\E/$ENV{NEW}/) { $n++ }
    END { exit($n == 1 ? 0 : 1) }
  ' "$file" || fail "$file: expected exactly one version line holding $current"
  echo "stamp-prerelease: $file -> $3"
}

stamp gen/rust/Cargo.toml          '^version = "'     "$semver"
stamp gen/node/package.json        '^  "version": "'  "$semver"
stamp gen/jsonschema/package.json  '^  "version": "'  "$semver"
stamp gen/typebox/package.json     '^  "version": "'  "$semver"
stamp gen/dotnet/Utxorpc.Spec.csproj '<Version>'      "$semver"
stamp gen/python/pyproject.toml    '^version = "'     "$pep440"
