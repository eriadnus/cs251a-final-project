#!/bin/bash

if [ -z "$3" ]
then
        GEM5_DIR="gem5"
else
        GEM5_DIR=$3
fi

cp "../$GEM5_DIR/${1}" "${2}"
echo "cp ${2} ../\$GEM5_DIR/${1}" >> copy.sh
echo "cp ../\$GEM5_DIR/${1} ${2}" >> update.sh
