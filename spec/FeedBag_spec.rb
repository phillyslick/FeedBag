require 'spec_helper'

describe FeedBag do
  it 'should have a version number' do
    expect(FeedBag::VERSION).to_not be_nil
  end
end
