#! /bin/bash
#SBATCH -J [Put job name here, you can reference this name in the ]
#SBATCH --mem=[Memory of node to request, example: 4G]
#SBATCH -o [Output Name, if you don't include it will output to current directory. This outputs whatever the script prints into console]

Rscript [Put Rscript here]
