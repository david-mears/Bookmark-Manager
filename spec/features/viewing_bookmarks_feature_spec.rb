feature 'You can view bookmarks' do
  scenario 'new bookmarks are visible' do
    Bookmark.new("www.bingo.com")
    Bookmark.new("www.bilbo.com")
    visit '/bookmarks'
    expect(page).to have_content "www.bingo.com"
    expect(page).to have_content "www.bilbo.com"
  end
  scenario 'bookmarks are clickable links' do
    visit '/bookmarks'
    click_link 'twitter'
    expect(page).not_to have_content "Your bookmarks:"
  end
end
