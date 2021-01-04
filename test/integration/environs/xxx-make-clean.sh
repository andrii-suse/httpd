#!lib/test-in-container-environs.sh
set -ex

./environ.sh --no-build ap1 $(pwd)/httpd
( cd httpd  && make clean && rm Makefile && rm configure )
