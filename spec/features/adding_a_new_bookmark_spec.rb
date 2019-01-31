feature do
  scenario 'enters and saves new bookmarks' do
    add_twitter_bookmark_and_reload
    expect(page).to have_content 'Twitter'
  end
end
