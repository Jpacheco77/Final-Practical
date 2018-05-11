#!/bin/bash

#PBS -q workq
#PBS -N minimap
#PBS -A loni_selu_gt
#PBS -j oe
#PBS -o minimap.out
#PBS -l nodes=1:ppn=20
#PBS -l walltime=6:00:00
#PBS -M juan.pacheco@selu.edu
#PBS -m abe

/work/jpacheco/minimap2-2.10_x64-linux/minimap2 -ax sr -t 20 /work/jpacheco/pacheco_finalpractical/data/Hybrid_assembly.fasta /work/jpacheco/pacheco_finalpractical/data/illumina_reads.fastq > /work/jpacheco/pacheco_finalpractical/data/aln.sam


