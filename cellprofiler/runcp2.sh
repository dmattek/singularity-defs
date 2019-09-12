#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/cellprofiler/cp2ubuntu.img

# List of directories to bind with the image
BNDDIR="-B /run -B /scratch -B /mnt/imaging.data"

# execute "runscript" section of the image
slurm-or-interactive singularity run $BNDDIR $IMLOC $@
