#!/usr/bin/env bash


# type "source ./setup.sh" to run this script first

PATH=$(echo "$PATH" | sed -e 's,/glade\/work\/wchapman\/miniconda3/[^:]\+\(:\|$\),,g')
PATH=$(echo "$PATH" | sed -e 's,/glade\/u\/home\/wchapman\/anaconda/[^:]\+\(:\|$\),,g')

module purge
module load intel/19.0.5 ncarcompilers/0.5.0 mpt/2.22 netcdf/4.7.3 nco/4.9.5 ncl/6.6.2
module load conda
conda activate npl-2023b

export CESM_ROOT=/glade/work/wchapman/cesm_supermodel/
chmod +x init_supermodel.py 
