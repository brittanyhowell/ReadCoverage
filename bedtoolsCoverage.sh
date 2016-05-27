#!/bin/bash

L1=/mnt/project/location
ALIGN=/mnt/project/STAR/mouse/output

echo "Commencing program" > record.txt
date >> record.txt

THISL1=${L1}/L1_Mouse_bothorf.bed
THISREAD=${ALIGN}/mm10Aligned.sortedByCoord.out.bam

echo ${THISREAD} >> record.txt
echo ${THISL1} >> record.txt

bedtools coverage -counts -a ${THISL1} -b ${THISREAD} 
#-hist -F 0.2 -s -split 
echo "Finishing at" >> record.txt 
date >> record.txt 
# -hist: makes histograms and additional data 
# -d: records depth at each L1 position
# -F: Minimum overlap with read (0.2 = ~20bp)
# -s: forces strandedness
# -split: treats cigar string split reads as two different reads