#!/bin/bash

echo "Commencing program" > record.txt
date >> record.txt

bedtools coverage -hist -F 0.2 -s -split  -a /mnt/project/STAR/mouse/output/mm10Aligned.sortedByCoord.out.bam  -b /mnt/project/location/L1_Mouse_bothorf.bed > coverage.out

echo "Finishing at" >> record.txt 
date >> record.txt 
# -hist: makes histograms and additional data 
# -d: records depth at each L1 position
# -F: Minimum overlap with read (0.2 = ~20bp)
# -s: forces strandedness
# -split: treats cigar string split reads as two different reads