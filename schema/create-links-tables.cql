CREATE KEYSPACE cloud1 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 2 };
DESCRIBE KEYSPACES;
-- ----------------------------------------------------------- --
-- DROP TABLE cloud1.links;

CREATE TABLE IF NOT EXISTS
cloud1.links2 (
    url text,
    PRIMARY KEY( url )
)
WITH comment='web page links'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
DESCRIBE KEYSPACE cloud1;
