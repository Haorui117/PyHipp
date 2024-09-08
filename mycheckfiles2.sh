rplpl-slurm.queue1-dy-m5a-4xlarge-1.7.out#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l


echo "Start Times"
head -n 1 *.out 

echo "End Times"
tail -n 2 *.out
