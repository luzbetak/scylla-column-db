-- http://www.datastax.com/dev/blog/new-features-in-cqlsh-copy
COPY cloud1.links ( domain, url ) 
FROM '/home/spider/raw/links-2.csv' 
WITH DELIMITER='\t' 
    AND HEADER=false
    AND INGESTRATE=10000
    AND NUMPROCESSES=4
    AND MAXINSERTERRORS=-1 
    AND MAXPARSEERRORS=-1;
