#!/bin/bash

# SOLAR=/home/users/w/wanb/scratch/software/solar900/solar

### This a script to run solar on gpu cluster, make sure you have solar installed and CUDA available
### Usage: bash run_solar.sh <input_file> <output_file>

## load input file
load pheno input.csv

## creating coviates
covar age^1,2#sex

## run heritability analysis using GPU 
gpu_fphi -list trait.header -o output.csv -all_gpus -use_covs 