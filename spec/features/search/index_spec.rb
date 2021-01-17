describe 'As a visitor' do
  it 'I can search for images by text' do
    visit root_path

    within '#search-text' do
      fill_in :text, with: "Rainbow"
      click_on "Search"
    end

    expect(current_path).to eq("/search")

    expect(page).to have_content("Image Results For: Rainbow")
    expect(page).to have_css('.image', count: 35)
  end

  it 'I can search for images by characteristics' do
    visit root_path

    within '#search-characteristics' do
      fill_in :text, with: "Rainbow"
      choose "color_Blue"
      choose "aspect_Square"
      click_on "Search"
    end

    expect(current_path).to eq("/search")

    expect(page).to have_content("Image Results For: Rainbow")
    expect(page).to have_content("Characteristics:")
    expect(page).to have_content("Color: Blue")
    expect(page).to have_content("Aspect Ratio: Square")
    expect(page).to have_css('.image', count: 35)
  end
end
