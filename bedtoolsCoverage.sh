#!/bin/bash

echo "Commencing program" 
date

READS=/mnt/project/STAR/mouse/output
L1=/mnt/project/location

if [ -f coverage-Rev-INTERSECTED.out ];
	then rm coverage-Rev-INTERSECTED.out
	fi  

bedtools coverage -F 0.2 -s -split -hist  -a ${L1}/L1_Mouse_bothorf.bed  -b ${READS}/intersectBothORFMm10.bed > coverage-Rev-INTERSECTED.out

echo "Finishing at" 
date 
# -hist: makes histograms and additional data 
# -d: records depth at each L1 position
# -F: Minimum overlap with read (0.2 = ~20bp)
# -s: forces strandedness
# -split: treats cigar string split reads as two different reads