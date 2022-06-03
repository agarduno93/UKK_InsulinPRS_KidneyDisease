#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J Lotta53
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-Lotta53.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-Lotta53.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-Lotta53.r
echo "3_Multivariate_Analysis-Restrict4-Primary-Lotta53 complete."