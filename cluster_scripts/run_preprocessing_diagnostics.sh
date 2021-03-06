#!/bin/bash

#SBATCH --job-name=pre-diag
#SBATCH --output=slurm_preprocessing%a.out
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=250GB
#SBATCH --time=1-00:00:00

# Modules
module purge
module load jupyter-kernels/py2.7
module load scikit-learn/intel/0.18.1

cd /home/jb6504/higgs_inference/preprocessing

python -u generate_data.py --pointbypoint --alternativedenom${SLURM_ARRAY_TASK_ID}
