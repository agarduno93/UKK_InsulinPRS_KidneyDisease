#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J 1_IR_CKD_DataPreparation-Unrelated
#SBATCH -o 1_IR_CKD_DataPreparation-Unrelated.out

jupyter nbconvert --to script 1_IR_CKD_DataPreparation-Unrelated.ipynb  
echo "jupyter file converted to R"
Rscript 1_IR_CKD_DataPreparation-Unrelated.r
echo "1_IR_CKD_DataPreparation-Unrelated complete."