# cs251a-final-project

## Making changes.
Note: this directory assumes that `cs251a-final-project` and `gem5` sit at the same level.  

### Adding a new file.
run `./add.sh file_path_here file_name_here`  
e.g. `./add.sh src/cpu/BaseCPU.py BaseCPU.py`  
Do *not* run this more than once - only modify the copy that you have after adding and run the copy script afterwards.  

### Copying all current files over to correct place in gem5 repo.
run `./copy.sh`  
