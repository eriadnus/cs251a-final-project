#!/bin/bash

GEM5_DIR="gem5"

cp limits.hh ../$GEM5_DIR/src/cpu/o3/limits.hh
cp rename.hh ../$GEM5_DIR/src/cpu/o3/rename.hh
cp rename.cc ../$GEM5_DIR/src/cpu/o3/rename.cc
