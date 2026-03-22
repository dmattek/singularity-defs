# Build the container image from the definition file
sudo apptainer build r-4.5.3.sif r-4.5.3.def

# Or with fakeroot (no root needed, but must be configured)
apptainer build --fakeroot r-4.5.3.sif r-4.5.3.def

# sudo is resetting the PATH and may not find apptainer
# Option 1: Use the full path
sudo $(which apptainer) build r-4.5.3.sif r-4.5.3.def

# Option 2: Preserve your PATH through sudo
sudo env "PATH=$PATH" apptainer build r-4.5.3.sif r-4.5.3.def



# Run R interactively (uses %runscript)
apptainer run r-4.5.3.sif

# Or run R via the app interface
apptainer run --app R r-4.5.3.sif

# Run Rscript on a specific file
apptainer run --app Rscript r-4.5.3.sif my_analysis.R

# Execute an R one-liner
apptainer exec r-4.5.3.sif Rscript -e "print(R.version.string)"

# If you want the container to see host R libraries in /library, bind-mount that directory at runtime:
apptainer run --bind /path/to/host/libs:/library r-4.5.3.sif
