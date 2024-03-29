#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/cellprofiler/cp3ubuntu.img

# List of directories to bind with the image
BNDDIR="-B /run -B /scratch -B /mnt/imaging.data -B /mnt/external.data -B /mnt/towbin.data -B /mnt/heussler.data"

# execute "runscript" section of the image
slurm-or-interactive singularity run $BNDDIR $IMLOC $@
