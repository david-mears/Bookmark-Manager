require 'PG'

class Bookmark

  @@conn = PG.connect( dbname: 'bookmark_manager' )

  def initialize(link)
    @link = link
    @@conn.exec( "INSERT INTO bookmarks (url) VALUES ('#{link}')")
  end

  def self.list
    @@conn.exec( "SELECT * FROM bookmarks" ).map do | row |
      row['url']
    end
  end
end
