COPY cloud1.links ( url ) 
TO '/home/spider/raw/cloud1.links.dat' 
WITH HEADER=false
    AND INGESTRATE=100000
    AND NUMPROCESSES=8
    AND MAXINSERTERRORS=-1 
    AND MAXPARSEERRORS=-1;
