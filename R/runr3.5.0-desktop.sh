#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/R/rstudio.3.5.0.simg

# List of directories to bind with the image
BNDDIR="-B /scratch -B /mnt/imaging.data -B /opt/local"

# execute "runscript" section of the image
slurm-or-interactive singularity run --app rstudio $BNDDIR $IMLOC $@
