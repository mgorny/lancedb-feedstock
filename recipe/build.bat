set OPENSSL_DIR=%LIBRARY_PREFIX%
set CARGO_PROFILE_RELEASE_LTO=thin
set "MATURIN_PEP517_ARGS=-v"

cd python

rm LICENSE
cp ../LICENSE .

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
