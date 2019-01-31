def add_twitter_bookmark_and_reload
  visit '/bookmarks'
  fill_in 'new', with: 'https://www.twitter.com'
  fill_in 'title', with: 'Twitter'
  click_button 'add'
  visit '/bookmarks'
end
