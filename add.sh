#!/bin/bash

GEM5_DIR="gem5"

cp ../$GEM5_DIR/${1} $2
echo "cp ${2} ../\$GEM5_DIR/${1}" >> copy.sh
