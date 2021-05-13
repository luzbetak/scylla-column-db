-- http://www.datastax.com/dev/blog/new-features-in-cqlsh-copy
COPY home.links ( url ) 
FROM '/home/spider/raw/links.csv' 
WITH DELIMITER='\t' 
    AND SKIPROWS=10000000
    AND HEADER=false
    AND INGESTRATE=5000
    AND NUMPROCESSES=2
    AND MAXINSERTERRORS=-1 
    AND MAXPARSEERRORS=-1;
