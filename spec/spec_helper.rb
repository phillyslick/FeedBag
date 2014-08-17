ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require 'FeedBag'
require "FeedBag/FeedGrabber"
require 'vcr'
Rails.backtrace_cleaner.remove_silencers!
# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

VCR.configure do |c|
  c.cassette_library_dir = 'spec/factories/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end