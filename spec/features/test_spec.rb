feature 'Testing index' do 
    scenario 'visting the index page' do 
        visit('/')
        expect(page).to have_content 'Bookmark manager'
    end 
end 