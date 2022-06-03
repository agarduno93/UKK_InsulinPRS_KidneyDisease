#! /bin/bash

#---------------------------------------------------------------------------------
# Load necessary modules for the job

module load R
module load jupyter

#---------------------------------------------------------------------------------
# Commands to execute below...

#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH -t 3-00:00              # Time Flag (3 days)
#SBATCH -J 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS.out
#SBATCH --partition=salem-compute

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS.r
echo "3_Multivariate_Analysis-Restrict4-Primary-Copy1 complete."

# Print some useful variables
echo "Job ID: $SLURM_JOB_ID"
echo "Job User: $SLURM_JOB_USER"
echo "Num Cores: $SLURM_JOB_CPUS_PER_NODE"