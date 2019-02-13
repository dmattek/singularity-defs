#!/bin/bash

# Singularity wrapper script

# Location of Singularity image
IMLOC=/opt/local/ShuttleTracker/st.simg

# List of directories to bind with the image
BNDDIR="-B /scratch -B /mnt/imaging.data"

# execute "runscript" section of the image
singularity run --app st-nogui $BNDDIR $IMLOC $@
