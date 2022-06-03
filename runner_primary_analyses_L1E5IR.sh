#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J L1E5IR
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-L1E5IR.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-L1E5IR.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-L1E5IR.r
echo "3_Multivariate_Analysis-Restrict4-Primary-L1E5IR complete."