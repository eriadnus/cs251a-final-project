# cs251a-final-project

Tetracosa file server layout.
  
some-folder/  
├── cs251a-final-project/  
│   ├── file-1.hh  
│   ├── ...  
│   └── file-n.hh  
└── gem5/  


## Adding a new file.
run `./add.sh file_path_here file_name_here`  
e.g. `./add.sh src/cpu/BaseCPU.py BaseCPU.py`  
Do *not* run this more than once - only modify the copy that you have after adding.

## Copying all current files over to correct place in gem5 repo.
run `./copy`  
