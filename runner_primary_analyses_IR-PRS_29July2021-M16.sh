#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-adjust
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-adjust.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-adjust.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-adjust.r
echo "3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-adjust complete."