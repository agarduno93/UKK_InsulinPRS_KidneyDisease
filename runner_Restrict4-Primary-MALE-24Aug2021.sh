#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J 3_Multivariate_Analysis-Restrict4-Primary-MALE
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-MALE.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-MALE.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-MALE.r
echo "3_Multivariate_Analysis-Restrict4-Primary-MALE complete."