# Suppose this is the full path.
FULL=/data/foo/genome.fasta.tar.gz
echo $FULL
# To make it: genome.fasta.tar.gz
NAME=$(basename ${FULL})
echo $NAME
# To make it: fasta.tar.gz
EXT1=${FULL#*.}
echo $EXT1
# To get only the extension: gz
EXT2=${FULL##*.}
echo $EXT2
# To get the other side: /data/foo/genome.fasta.tar
START=${FULL%.*}
echo $START
