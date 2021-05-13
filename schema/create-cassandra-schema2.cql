-- DROP KEYSPACE IF EXISTS cloud1;
CREATE KEYSPACE IF NOT EXISTS cloud1 WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.vdomain2 (
  domain text,
  total counter,
  PRIMARY KEY (domain)
)
WITH comment     = 'visited total domain'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.visit2 (
    url text,
    PRIMARY KEY( url )
)
WITH comment='visited urls'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.links2 (
    url text,
    PRIMARY KEY( url )
)
WITH comment='visited urls'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
DESCRIBE KEYSPACE cloud1;
