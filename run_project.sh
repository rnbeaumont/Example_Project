#!/bin/bash
# script to run all project code

# flags for whether to run each stage
MAKE_CLEAN=0	# flag for whether to remove data and results directories to start project from scratch
STEP0=1	# flag for whether to create directory structure
STEP1=1	# flag for whether to create dummy results files

# remove data and results directories to start again from scratch
if [[ $MAKE_CLEAN ]]
then
	rm -r results/
	rm -r data/
fi
# create directory structure
if [[ $STEP0 ]]
then
	./code/step0_setup_directory_structure.sh
fi
# make an example file
if [[ $STEP1 ]]
then
	echo "Example results" > results/example_file
fi
