#!/bin/bash

#PBS -q bigmem
#PBS -N Pilon_improvement
#PBS -A loni_selu_gt
#PBS -j oe
#PBS -o pilon.out
#PBS -l nodes=1:ppn=24
#PBS -l walltime=24:00:00
#PBS -M juan.pacheco@selu.edu
#PBS -m abe

datapath=/work/jpacheco/pacheco_finalpractical/data
cd $datapath

java -Xmx120G -jar /work/jpacheco/pilon-1.22.jar --threads 20 --genome Hybrid_assembly.fasta --outdir /work/jpacheco/pacheco_finalpractical/output/ --changes --tracks --diploid --bam aln.sorted.bam
## Used the --bam in the input part as I didn't know the type of genome I had, also makes it easier in the future. Had to reindex the sorted .bam file too because of problems with the file creation time.


