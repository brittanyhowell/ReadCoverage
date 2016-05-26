#!/bin/bash

L1=/Users/brittanyhowell/Documents/University/Honours_2016/Project/Data/L1Location
ALIGN=/Users/brittanyhowell/Documents/University/Honours_2016/Project/Genomes/STAR/testOutput



bedtools coverage -hist -F 0.2 -s -split -a ${L1}/L1_Mouse_bothorf.bed -b ${ALIGN}/mm10Aligned.sortedByCoord.out.bam

# -hist: makes histograms and additional data 
# -d: records depth at each L1 position
# -F: Minimum overlap with read (0.2 = ~20bp)
# -s: forces strandedness
# -split: treats cigar string split reads as two different reads