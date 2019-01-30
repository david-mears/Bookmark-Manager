def add_twitter_bookmark_and_reload
  visit '/bookmarks'
  fill_in 'new', with: 'https://www.twitter.com'
  click_button 'add'
  visit '/bookmarks'
end
