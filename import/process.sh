#!/bin/bash

for file in /tmp/*.dat; do

# echo $file
# echo ${file##*/}

read -r -d '' VAR << EOM
COPY cloud1.visit ( url )
FROM '$file'
WITH DELIMITER='\t'
    AND HEADER=false
    AND INGESTRATE=25000
    AND NUMPROCESSES=8
    AND MAXINSERTERRORS=-1
    AND MAXPARSEERRORS=-1;
EOM


echo "/bin/cqlsh -e \"$VAR\" &" &
/bin/cqlsh -e "$VAR" 

sleep 3
rm -f ${file}

done

