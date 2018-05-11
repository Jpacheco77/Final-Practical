#!/bin/bash

#PBS -q workq
#PBS -N busco_raw
#PBS -A loni_selu_gt
#PBS -j oe
#PBS -o braw.out
#PBS -l nodes=1:ppn=20
#PBS -l walltime=12:00:00
#PBS -M juan.pacheco@selu.edu
#PBS -m abe
module load python/2.7.7-anaconda
module load boost/1.55.0/INTEL-14.0.2

export AUGUSTUS_CONFIG_PATH=/work/jpacheco/augustus/config/

python /work/jpacheco/busco/scripts/run_BUSCO.py -i /work/jpacheco/pacheco_finalpractical/data/Hybrid_assembly.fasta -o busco_analysis_raw -l /work/jpacheco/pacheco_finalpractical/actinopterygii_odb9/ -m geno -c 20 -sp zebrafish
