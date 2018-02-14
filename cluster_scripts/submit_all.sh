#!/bin/bash

cd /home/jb6504/higgs_inference/cluster_scripts

################################################################################
# Truth
################################################################################

# sbatch run_truth.sh

# sleep 60


################################################################################
# LR and batch size experiments
################################################################################

sbatch run_lr_batch_experiments.sh


################################################################################
# True data
################################################################################

sbatch run_carl.sh
sbatch run_combined.sh
sbatch run_regression.sh
sbatch run_combinedregression.sh

# sbatch run_carl_point_by_point.sh
# sbatch run_regression_point_by_point.sh

# sbatch run_scoreregression.sh

# sbatch run_afc.sh


################################################################################
# Smearing
################################################################################

sbatch run_carl_smearing.sh
sbatch run_combined_smearing.sh
sbatch run_regression_smearing.sh
sbatch run_combinedregression_smearing.sh

# sbatch run_carl_point_by_point_smearing.sh
# sbatch run_regression_point_by_point_smearing.sh

# sbatch run_scoreregression_smearing.sh

sleep 60


################################################################################
# Physics-aware
################################################################################

sbatch run_carl_aware.sh
sbatch run_combined_aware.sh
sbatch run_regression_aware.sh
sbatch run_combinedregression_aware.sh