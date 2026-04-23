set OPENSSL_DIR=%LIBRARY_PREFIX%
set "RUSTFLAGS=-C linker=clang -C link-args=-fuse-ld=lld"
set "MATURIN_PEP517_ARGS=-v"

cd python

rm LICENSE
cp ../LICENSE .

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
