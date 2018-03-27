#!/bin/bash

#SBATCH --job-name=pre
#SBATCH --output=slurm_preprocessing.out
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=250GB
#SBATCH --time=2-00:00:00

# Modules
module purge
module load jupyter-kernels/py2.7
module load scikit-learn/intel/0.18.1

cd /home/jb6504/higgs_inference/preprocessing

python -u generate_data.py --train --scoreregression --new
python -u generate_data.py --calibration --recalibration --new
python -u generate_data.py --test --new
