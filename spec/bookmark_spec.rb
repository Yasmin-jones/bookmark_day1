# describe '#bookmark' do 
#     describe '.all' do 
#     it 'returns a list of bookmarks' do 
#     bookmarks = Bookmark.all 
#     expect(bookmarks).to include 'www.facebook.com'    
#     expect(bookmarks).to include 'www.instagram.com'    
#     end 
#     end 
# end 

describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
end