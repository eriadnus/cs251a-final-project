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
cp ../$GEM5_DIR/src/cpu/o3/SConscript SConscript
cp ../$GEM5_DIR/src/cpu/o3/token_manager.cc token_manager.cc
cp ../$GEM5_DIR/src/cpu/o3/token_manager.hh token_manager.hh
cp ../$GEM5_DIR/src/cpu/o3/inst_queue.cc inst_queue.cc
cp ../$GEM5_DIR/src/cpu/o3/inst_queue.hh inst_queue.hh
cp ../$GEM5_DIR/src/cpu/o3/fetch.cc fetch.cc
cp ../$GEM5_DIR/src/cpu/o3/fetch.hh fetch.hh
cp ../$GEM5_DIR/src/cpu/o3/dyn_inst.cc dyn_inst.cc
