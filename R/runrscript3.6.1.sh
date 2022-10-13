#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/R/rstudio.3.6.1.simg

# List of directories to bind with the image
BNDDIR="-B /scratch -B /mnt/imaging.data -B /mnt/external.data -B /opt/local -B /usr/local/lib/R/site-library"

# execute "runscript" section of the image
slurm-or-interactive singularity run --app Rscript $BNDDIR $IMLOC $@
