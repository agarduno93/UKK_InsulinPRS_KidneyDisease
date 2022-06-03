#! /bin/bash
#SBATCH --mem-per-cpu=4G
#SBATCH --cpus-per-task=6
#SBATCH --ntasks=1
#SBATCH -J L5E8IR
#SBATCH -o 3_Multivariate_Analysis-Restrict4-Primary-L5E8IR.out

jupyter nbconvert --to script 3_Multivariate_Analysis-Restrict4-Primary-L5E8IR.ipynb  
echo "jupyter file converted to R"
Rscript 3_Multivariate_Analysis-Restrict4-Primary-L5E8IR.r
echo "3_Multivariate_Analysis-Restrict4-Primary-UdlerLIR complete."