#!/bin/sh

# This script runs single FUT test : arg1 - FUT test file, remaining - FUT test input params

# secrion for sourcing all common FUT dependencies
. ./file_dep1.sh
. ./file_dep2.sh

test=$1
shift

if [ -e "$test" ]; then
    echo "Executing test: $test $@ ..."
    . "$test"
else
    echo "Error: $test file is not executable"
    exit 1
fi

