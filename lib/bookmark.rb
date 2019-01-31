require 'PG'

class Bookmark

  @@conn = PG.connect( dbname: 'bookmark_manager' )

  def self.add(title, url)
    url = "https://#{url}" unless url =~ /http/
    self.conn.exec( "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')")
  # Should be hackable with:
  # '); DELETE FROM bookmarks; INSERT INTO bookmarks (url) VALUES ('I HACKED YOU!!'); -->
  end

  def self.list
    list = []
    self.titles.each.with_index do |title, index|
      to_add = { url: self.links[index], title: title }
      list.push(to_add)
    end
    return list
  end

  private

  def self.titles
    self.conn.exec( "SELECT * FROM bookmarks" ).map do | row |
      row['title']
    end
  end

  def self.links
    self.conn.exec( "SELECT * FROM bookmarks" ).map do | row |
      row['url']
    end
  end

  def self.conn
    @@conn
  end
end
