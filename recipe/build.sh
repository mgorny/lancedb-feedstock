#!/bin/bash

set -euxo pipefail

export OPENSSL_DIR=$PREFIX

export RUSTFLAGS="-C linker=clang -C link-args=-fuse-ld=lld"
export MATURIN_PEP517_ARGS="-v"

pushd python
${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
