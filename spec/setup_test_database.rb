require 'PG'

def setup_test_database
  conn = PG.connect( dbname: 'test_bookmark_manager')
  conn.exec( 'TRUNCATE TABLE bookmarks' )
end
