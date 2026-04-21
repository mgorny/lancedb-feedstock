set OPENSSL_DIR=%LIBRARY_PREFIX%

cd python

rm LICENSE
cp ../LICENSE .

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
