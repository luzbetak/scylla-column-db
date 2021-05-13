-- ----------------------------------------------------------- --
CREATE TABLE IF NOT EXISTS
cloud1.visit (
    url text,
    PRIMARY KEY( url )
)
WITH comment='visited urls'
 AND compression = { 'sstable_compression' : '' } 
 AND compaction  = { 'class' :  'LeveledCompactionStrategy' }; 
-- ----------------------------------------------------------- --
