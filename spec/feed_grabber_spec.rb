require 'spec_helper'

describe FeedGrabber do
  before do
    VCR.use_cassette('new_wikipedia') do
      @grabber = FeedGrabber.new("http://en.wikipedia.org/w/index.php?title=Special:NewPages&feed=atom")
    end
  end
  
  it 'should be able to initalize a feed' do
    expect(@grabber.class).to eq FeedGrabber
  end
  
  describe "parsing feeds" do
    
    it "can read entries" do
      expect(@grabber.atom).to receive(:entries)
      @grabber.atom.entries
    end
    
    it "has a shortcut for getting to entries" do
      expect(@grabber.entries).to eq @grabber.atom.entries
    end
    
    it "can return entries suitable for db population" do
      parsed_entries = @grabber.parse_entries
      expect(parsed_entries.class).to eq Array
      expect(parsed_entries.first.class).to eq Hash
    end

    #expect(@grabber.atom.entries)
  end
end
