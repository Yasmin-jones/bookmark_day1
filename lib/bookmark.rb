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
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'bookmark_manager_test')
        else
            connection = PG.connect(dbname: 'bookmark_manager')
          
        end 

        result = connection.exec('SELECT * FROM bookmarks')
        result.map { |bookmark| bookmark['url']}
    end 



end 