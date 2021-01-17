describe 'As a visitor' do
  describe 'when I visit the root path' do
    it 'has the name of the application' do
      visit root_path

      within '#app-name' do
        expect(page).to have_content('Image Searcher')
      end
    end

    it 'has a search by text form' do
      visit root_path

      within '#search-text' do
        expect(page).to have_field('text')
        expect(page).to have_button('Search')
      end
    end

    it 'has a search by characteristics form' do
      visit root_path

      within '#search-characteristics' do
        expect(page).to have_field('color')
        expect(page).to have_field('aspect')
        expect(page).to have_button('Search')

      end
    end

    it 'has a search by image form' do
      visit root_path

      within '#search-image' do
        expect(page).to have_field('image_url')
        expect(page).to have_button('Search')
      end
    end
  end
end
