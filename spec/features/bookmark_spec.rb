feature 'viewing bookmarks' do 
    scenario 'A user can view a list of bookmarks' do 
        visit ('/bookmarks')
        expect(page).to have_content 'www.google.co.uk www.yahoo.co.uk'
    end
end 