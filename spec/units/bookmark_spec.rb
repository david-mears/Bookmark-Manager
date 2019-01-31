require 'bookmark'

describe Bookmark do
  it 'can be given a bookmark' do
    expect{ described_class.add('www.website.com') }.to change{ described_class.list.count }.by(1)
  end
  it 'can remember the bookmark it was given' do
    described_class.add('www.website.com')
    expect(described_class.list).to eq ['www.website.com']
  end
end
