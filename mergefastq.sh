# qc
# Bail on errors.
set -ueo pipefail

#merge 4 line in 1 fastq.gz
sampleArr=(e12_5_H3K4me2_Rep1_Ad21 e12_5_H3K4me2_Rep2_Ad22)

for item in "${sampleArr[@]}"
do
    cat $item*/*R1* > $item.R1.fastq.gz
    cat $item*/*R2* > $item.R2.fastq.gz
done

## file size check
# du -sh *
# md5 * > md5_2.txt
