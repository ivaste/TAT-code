#!/bin/bash
#SBATCH -J stefanoPreprocessing
#SBATCH -o output_%j.txt
#SBATCH -e errors_%j.txt
#SBATCH -t 10:30:00
#SBATCH -n 1
#SBATCH -p allgroups
#SBATCH --mem 30G


srun singularity exec --home /nfsd/VFdisk/ivancichst/thesis/TAT-code ../ubu-tat-cpu.sif python3 -m TAT.preprocessing --dataset CollegeMsg
