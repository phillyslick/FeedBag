require "spec_helper"

describe FeedBag::Feedbaggable do
  before do
    VCR.use_cassette('new_wikipedia') do
      @current_entries = FeedGrabber.new("http://en.wikipedia.org/w/index.php?title=Special:NewPages&feed=atom").parse_entries
    end
    @entry = Entry.new
  end
  
  context "Class Methods" do
    it "can tell if the model is up to date" do
      expect(@entry.feed_current?).to be_true
    end
  end
end