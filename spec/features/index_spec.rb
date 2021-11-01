feature 'viewing bookmarks' do 
    scenario 'A user can view a list of bookmarks' do 
        visit ('/bookmarks')
        expect(page).to have_content 'www.facebook.com'
        expect(page).to have_content 'www.instagram.com'
    end
end 