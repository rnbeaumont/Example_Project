# Example Project
An example of a project file structure
Author: Robin N Beaumont

# Table of contents
- [Example Project](#Example-Project)
- [Table of Contents](#Table-of-contents)
  - [Folder Structure](#folder-structure)
- [Project Details](#Project-details)

## Folder Structure
```
├── .gitignore <- Files to ignore for git.
├── README.md <- The top=level README.
├── code/ <- Folder containing scripts and code to run the project
├── data/ <- Folder containing raw data files used by the project
├── results/ <- Folder containing derived data files and results
├── run_project.sh <- Bash script to run the entire project
├── file_locations <- file containing parameters to be read in by all scripts in the project
```

# Project details

This is a very basic example of one way to lay out a data project.

Running the script `run_project.sh` will create the data and results directories, and create an example file within the results directory

The `file_locations` file is a file to contain parameters which you want to pass to any of the scripts in the project. This may include names of input/output files within the project, external URLs to download data from, or other data files stored centrally on the server. This will also help if you want to share the analysis code for your project publically when you publish any papers resulting from it, as others should then be able to modify this file to point to locations of data on their systems, then run `run_project.sh` to recreate your results.

The `.gitignore` file is set to ignore anything in the `results/` and `data/` directories. This can be changed, or other files ignored, by editing the `.gitignore` file.
