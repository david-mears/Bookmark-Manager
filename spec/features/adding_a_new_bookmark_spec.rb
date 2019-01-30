feature do
  scenario 'enters and saves new bookmarks' do
    fake_name = 'www.the_best_website_ever.com.com.com.ever'
    visit '/bookmarks'
    fill_in 'new', with: fake_name
    click_button 'add'
    visit '/bookmarks'
    expect(page).to have_content fake_name
  end
end
