#!/bin/bash

# Bash workflow for basic exploration of gene expression data

FILE=$1

echo "File details:"
ls -lh $FILE

echo "Number of genes (rows):"
wc -l $FILE

echo "Preview of the dataset:"
head $FILE

echo "Number of samples (columns):"
head -n 1 $FILE | tr '\t' '\n' | wc -l
