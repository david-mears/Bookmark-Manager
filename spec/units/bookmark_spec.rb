require 'bookmark'

describe Bookmark do
  it 'can be given a bookmark' do
    expect{ described_class.add('Example', 'www.website.com') }.to change{ described_class.list.count }.by(1)
  end
  it 'can remember the bookmark it was given' do
    described_class.add('Example', 'www.website.com')
    expected = [{ url: 'https://www.website.com', title: 'Example' }]
    expect(described_class.list).to eq expected
  end
end
