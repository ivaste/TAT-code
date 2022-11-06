#!/bin/bash
#SBATCH -J stefanoJobTestTATSingularity
#SBATCH -o output_%j.txt
#SBATCH -e errors_%j.txt
#SBATCH -t 50:30:00
#SBATCH -n 1
#SBATCH -p allgroups
#SBATCH --mem 30G
#SBATCH -w gpu1
#SBATCH --gres=gpu:1

srun singularity exec --nv --home /nfsd/VFdisk/ivancichst/thesis/TAT-code ../ubu-tat-GPU-CU102.sif python3 checkgpu.py
