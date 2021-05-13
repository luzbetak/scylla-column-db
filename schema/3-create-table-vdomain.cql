-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.vdomain (
  domain text,
  total counter,
  PRIMARY KEY (domain)
)
WITH comment     = 'visited total domain'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
