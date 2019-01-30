feature 'You can view bookmarks' do
  scenario 'new bookmarks are visible' do
    add_twitter_bookmark_and_reload
    expect(page).to have_content "www.twitter.com"
  end
  scenario 'bookmarks are clickable links' do
    add_twitter_bookmark_and_reload
    visit '/bookmarks'
    click_link 'twitter'
    expect(page).not_to have_content "Your bookmarks:"
  end
end
