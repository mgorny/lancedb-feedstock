#!/bin/bash

set -euxo pipefail

export OPENSSL_DIR=$PREFIX

export RUSTFLAGS="-C lto=thin"
export MATURIN_PEP517_ARGS="-v"

pushd python
${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
