require 'sinatra/base'
require_relative '../lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'BookmarkManager'
  end

  get '/bookmarks' do
    @list = Bookmark.list
    erb(:bookmarks)
  end

  post '/adding' do
    p params
    Bookmark.new(params[:new])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
