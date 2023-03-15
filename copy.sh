#!/bin/bash

if [ -z "$1" ]
then
	GEM5_DIR="gem5"
else
	GEM5_DIR=$1
fi

cp limits.hh ../$GEM5_DIR/src/cpu/o3/limits.hh
cp rename.hh ../$GEM5_DIR/src/cpu/o3/rename.hh
cp rename.cc ../$GEM5_DIR/src/cpu/o3/rename.cc
cp dyn_inst.hh ../$GEM5_DIR/src/cpu/o3/dyn_inst.hh
cp SConscript ../$GEM5_DIR/src/cpu/o3/SConscript
cp token_manager.cc ../$GEM5_DIR/src/cpu/o3/token_manager.cc
cp token_manager.hh ../$GEM5_DIR/src/cpu/o3/token_manager.hh
cp inst_queue.cc ../$GEM5_DIR/src/cpu/o3/inst_queue.cc
cp inst_queue.hh ../$GEM5_DIR/src/cpu/o3/inst_queue.hh
cp fetch.cc ../$GEM5_DIR/src/cpu/o3/fetch.cc
cp fetch.hh ../$GEM5_DIR/src/cpu/o3/fetch.hh
cp dyn_inst.cc ../$GEM5_DIR/src/cpu/o3/dyn_inst.cc
cp lsq_unit.cc ../$GEM5_DIR/src/cpu/o3/lsq_unit.cc
