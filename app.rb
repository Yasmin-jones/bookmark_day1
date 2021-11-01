require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark manager'
  end

  get '/bookmarks' do 
    @bookmarks = ['www.google.co.uk','www.yahoo.co.uk']
    
    erb :'bookmarks/index'
  end 


  run! if app_file == $0
end