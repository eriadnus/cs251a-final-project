# cs251a-final-project

Tetracosa file server layout.
  
some-folder/  
├── cs251a-final-project/  
│   ├── file-1.hh  
│   ├── ...  
│   └── file-n.hh  
└── gem5/  


## Adding a new file.
run `./add file_path_here file_name_here`
e.g. `./add src/cpu/BaseCPU.py BaseCPU.py`

## Copying all current files over to correct place in gem5 repo.
run `./copy`
