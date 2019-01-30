require 'PG'

class Bookmark

  @@conn = PG.connect( dbname: 'bookmark_manager' )

  def initialize(link)
    Bookmark.conn.exec( "INSERT INTO bookmarks (url) VALUES ('#{link}')")
  # Should be hackable with:
  # '); DELETE FROM bookmarks; INSERT INTO bookmarks (url) VALUES ('I HACKED YOU!!'); -->
  end

  def self.list
    self.conn.exec( "SELECT * FROM bookmarks" ).map do | row |
      row['url']
    end
  end

  private

  def self.conn
    @@conn
  end
end
