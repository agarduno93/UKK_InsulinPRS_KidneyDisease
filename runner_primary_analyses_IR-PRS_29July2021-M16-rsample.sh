#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-RandomSample
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-RandomSample.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-RandomSample.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-RandomSample.r
echo "3_Multivariate_Analysis-Restrict4-Primary-IR-PRS-RandomSample complete."