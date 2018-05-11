#!/bin/bash

#PBS -q workq
#PBS -N sorting
#PBS -A loni_selu_gt
#PBS -j oe
#PBS -o index.out
#PBS -l nodes=1:ppn=20
#PBS -l walltime=12:00:00
#PBS -M juan.pacheco@selu.edu
#PBS -m abe

module load samtools

datapath=/work/jpacheco/pacheco_finalpractical/data/
cd $datapath

samtools view -S -@ 20 -b aln.sam > aln.bam
/work/jpacheco/sambamba_v0.6.6 sort -o aln.sorted.bam -p -t 20 aln.bam
samtools index -@ 20 aln.sorted.bam

