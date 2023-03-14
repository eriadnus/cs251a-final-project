#!/bin/bash

if [ -z "$1" ]
then
	GEM5_DIR="gem5"
else
	GEM5_DIR=$1
fi

cp ../$GEM5_DIR/src/cpu/o3/limits.hh limits.hh
cp ../$GEM5_DIR/src/cpu/o3/rename.hh rename.hh
cp ../$GEM5_DIR/src/cpu/o3/rename.cc rename.cc
cp ../$GEM5_DIR/src/cpu/o3/dyn_inst.hh dyn_inst.hh
