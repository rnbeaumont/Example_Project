#!/bin/bash
# script to run all project code

# flags for whether to run each stage
MAKE_CLEAN=0	# flag for whether to remove data and results directories to start project from scratch
STEP0=1	# flag for whether to create directory structure

if [[ $MAKE_CLEAN ]]
then
	rm -r results/
	rm -r data/
fi

if [[ $STEP0 ]]
then
	./code/step0_setup_directory_structure.sh
fi
