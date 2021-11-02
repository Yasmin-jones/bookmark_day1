

feature 'viewing bookmarks' do 
    scenario 'A user can view a list of bookmarks' do 
        enter_database
        visit ('/bookmarks')
        expect(page).to have_content 'http://www.makersacademy.com'
        expect(page).to have_content 'http://www.google.com'
        expect(page).to have_content 'http://www.destroyallsoftware.com'
    end
end 