require 'pg'

class Bookmark 


    # def initialize
    #     @bookmarks = ['www.facebook.com','www.instagram.com' ]
        
    # end 

    # def list
    #     @bookmarks.each do |bookmark|
    #         puts bookmark 
    #     end 
    # end 

    def self.all 
        connection = PG.connect(dbname: 'bookmark_manager')
        result = connection.exec('SELECT * FROM bookmarks')
        result.map { |bookmark| bookmark['url']}
    end 


end 