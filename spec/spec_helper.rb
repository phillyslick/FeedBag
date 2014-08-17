$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'FeedBag'
require "FeedBag/FeedGrabber"
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/factories/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end