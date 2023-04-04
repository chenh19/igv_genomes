#!/bin/bash
# This script downloads genome for IGV.

## create folders
[ ! -d ~/igv/ ] && mkdir ~/igv/
[ ! -d ~/igv/genomes/ ] && mkdir ~/igv/genomes/
[ ! -d ~/igv/genomes/seq/ ] && mkdir ~/igv/genomes/seq/
[ ! -f ~/igv/genomes/sequenceMap.txt ] && touch ~/igv/genomes/sequenceMap.txt

## download fasta and index files
### mm9
[ ! -f ~/igv/genomes/mm9.json ] && wget -q https://raw.githubusercontent.com/chenh19/igv_genomes/main/json/mm9.json -O ~/igv/genomes/mm9.json
[ ! -f ~/igv/genomes/seq/mm9.fa.fai ] && wget -q https://s3.amazonaws.com/igv.org.genomes/mm9/mm9.fasta.fai -O ~/igv/genomes/seq/mm9.fa.fai
[ ! -f ~/igv/genomes/seq/mm9.fa ] && wget https://s3.amazonaws.com/igv.org.genomes/mm9/mm9.fasta -O ~/igv/genomes/seq/mm9.fa
if ! grep -q "mm9	~/igv/genomes/seq/mm9.fa" ~/igv/genomes/sequenceMap.txt ; then echo -e "mm9	~/igv/genomes/seq/mm9.fa" >> ~/igv/genomes/sequenceMap.txt ; fi
### mm10
[ ! -f ~/igv/genomes/mm10.json ] && wget -q https://raw.githubusercontent.com/chenh19/igv_genomes/main/json/mm10.json -O ~/igv/genomes/mm10.json
[ ! -f ~/igv/genomes/seq/mm10.fa.fai ] && wget -q https://s3.amazonaws.com/igv.broadinstitute.org/genomes/seq/mm10/mm10.fa.fai -O ~/igv/genomes/seq/mm10.fa.fai
[ ! -f ~/igv/genomes/seq/mm10.fa ] && wget https://s3.amazonaws.com/igv.broadinstitute.org/genomes/seq/mm10/mm10.fa -O ~/igv/genomes/seq/mm10.fa
if ! grep -q "mm10	~/igv/genomes/seq/mm10.fa" ~/igv/genomes/sequenceMap.txt ; then echo -e "mm10	~/igv/genomes/seq/mm10.fa" >> ~/igv/genomes/sequenceMap.txt ; fi
### mm39
[ ! -f ~/igv/genomes/mm39.json ] && wget -q https://raw.githubusercontent.com/chenh19/igv_genomes/main/json/mm39.json -O ~/igv/genomes/mm39.json
[ ! -f ~/igv/genomes/seq/mm39.fa.fai ] && wget -q https://s3.amazonaws.com/igv.org.genomes/mm39/mm39.fa.fai -O ~/igv/genomes/seq/mm39.fa.fai
[ ! -f ~/igv/genomes/seq/mm39.fa ] && wget https://s3.amazonaws.com/igv.org.genomes/mm39/mm39.fa -O ~/igv/genomes/seq/mm39.fa
if ! grep -q "mm39	~/igv/genomes/seq/mm39.fa" ~/igv/genomes/sequenceMap.txt ; then echo -e "mm39	~/igv/genomes/seq/mm39.fa" >> ~/igv/genomes/sequenceMap.txt ; fi
### hg19
[ ! -f ~/igv/genomes/hg19.json ] && wget -q https://raw.githubusercontent.com/chenh19/igv_genomes/main/json/hg19.json -O ~/igv/genomes/hg19.json
[ ! -f ~/igv/genomes/seq/hg19.fa.fai ] && wget -q https://igv-genepattern-org.s3.amazonaws.com/genomes/seq/hg19/hg19.fasta.fai -O ~/igv/genomes/seq/hg19.fa.fai
[ ! -f ~/igv/genomes/seq/hg19.fa ] && wget https://igv-genepattern-org.s3.amazonaws.com/genomes/seq/hg19/hg19.fasta -O ~/igv/genomes/seq/hg19.fa
if ! grep -q "hg19	~/igv/genomes/seq/hg19.fa" ~/igv/genomes/sequenceMap.txt ; then echo -e "hg19	~/igv/genomes/seq/hg19.fa" >> ~/igv/genomes/sequenceMap.txt ; fi
### hg38
[ ! -f ~/igv/genomes/hg38.json ] && wget -q https://raw.githubusercontent.com/chenh19/igv_genomes/main/json/hg38.json -O ~/igv/genomes/hg38.json
[ ! -f ~/igv/genomes/seq/hg38.fa.fai ] && wget -q https://igv-genepattern-org.s3.amazonaws.com/genomes/seq/hg38/hg38.fa.fai -O ~/igv/genomes/seq/hg38.fa.fai
[ ! -f ~/igv/genomes/seq/hg38.fa ] && wget https://igv-genepattern-org.s3.amazonaws.com/genomes/seq/hg38/hg38.fa -O ~/igv/genomes/seq/hg38.fa
if ! grep -q "hg38	~/igv/genomes/seq/hg38.fa" ~/igv/genomes/sequenceMap.txt ; then echo -e "hg38	~/igv/genomes/seq/hg38.fa" >> ~/igv/genomes/sequenceMap.txt ; fi
