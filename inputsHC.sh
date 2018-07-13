#!/bin/bash

touch inputsTSV.txt

for file in *_dedup_RG.bam; do
	printf "%s\t%s\t%s\n" "${file%.bam}" "${file}" "${file}.bai" >> inputsTSV.txt;
done
