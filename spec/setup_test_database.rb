require 'PG'

def setup_test_database
  conn = PG.connect( dbname: 'test_bookmark_manager')
  conn.exec( 'DROP TABLE IF EXISTS bookmarks' )
  conn.exec( 'CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60))' )
end
