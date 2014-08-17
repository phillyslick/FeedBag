require 'FeedBag'
require "FeedBag/FeedGrabber"
require 'vcr'

# Load support files


VCR.configure do |c|
  c.cassette_library_dir = 'spec/factories/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end