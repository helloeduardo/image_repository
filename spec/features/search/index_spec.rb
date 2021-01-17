describe 'As a visitor' do
  it 'I can search for images by text' do
    visit root_path

    within '#search-text' do
      fill_in :text, with: "Something"
      click_on "Search"
    end

    expect(current_path).to eq("/search")

    expect(page).to have_content("Image Results for: Something")
    expect(page).to have_css('.image', count: 10)
  end
end
