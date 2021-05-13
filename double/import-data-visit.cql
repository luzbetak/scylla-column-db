COPY cloud1.visit ( url) 
FROM '/home/spider/raw/links-1.csv' 
WITH DELIMITER='\t' AND HEADER=false;
