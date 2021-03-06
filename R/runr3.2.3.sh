#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/R/rubuntu.3.2.3.img

# List of directories to bind with the image
BNDDIR="-B /scratch -B /mnt/imaging.data -B /opt/local"

# execute "runscript" section of the image
slurm-or-interactive singularity exec $BNDDIR $IMLOC R $@
