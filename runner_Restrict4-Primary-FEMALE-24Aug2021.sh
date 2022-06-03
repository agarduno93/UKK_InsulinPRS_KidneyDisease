#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J 4_Restrict4-Primary-FEMALE-24Aug2021
#SBATCH -o 4_Restrict4-Primary-FEMALE-24Aug2021.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-FEMALE-24Aug2021.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-FEMALE-24Aug2021.r
echo "3_Multivariate_Analysis-Restrict4-Primary-FEMALE-24Aug2021 complete."