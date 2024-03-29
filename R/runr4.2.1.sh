#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/R/r.4.2.1.sif

# List of directories to bind with the image
BNDDIR="-B /scratch -B /mnt/imaging.data -B /mnt/external.data -B /mnt/towbin.data -B /mnt/heussler.data -B /opt/local"

# execute "runscript" section of the image
slurm-or-interactive singularity run --app R $BNDDIR $IMLOC $@
