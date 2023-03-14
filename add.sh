#!/bin/bash

if [ -z "$1" ]
then
        GEM5_DIR="gem5"
else
        GEM5_DIR=$1
fi

cp ../$GEM5_DIR/${1} $2
echo "cp ${2} ../\$GEM5_DIR/${1}" >> copy.sh
echo "cp ../$GEM5_DIR/${1} ${2}" >> update.sh

echo "${2}" >> version_controlled_files.txt
