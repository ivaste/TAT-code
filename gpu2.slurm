#!/bin/bash
#SBATCH -J stefanoJobTestTATSingularity
#SBATCH -o out_113_%j.txt
#SBATCH -e err_113_%j.txt
#SBATCH -t 50:30:00
#SBATCH -n 1
#SBATCH -p allgroups
#SBATCH --mem 30G
#SBATCH --gres=gpu:rtx:1

srun singularity exec --nv --home /nfsd/VFdisk/ivancichst/thesis/TAT-code ../ubu-tat-GPU-CU113_NEW.sif python3 -m TAT.main --dataset CollegeMsg --model TAT --gpu 0
