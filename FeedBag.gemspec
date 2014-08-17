$:.push File.expand_path("../lib", __FILE__)
require 'FeedBag/version'

Gem::Specification.new do |spec|
  spec.name          = "FeedBag"
  spec.version       = FeedBag::VERSION
  spec.authors       = ["Philly Slick"]
  spec.email         = ["noesis@philadelphiaslick.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "rails", "~> 4.1.4"
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "vcr", "~> 2.9.2"
  spec.add_development_dependency "webmock", "~> 1.18.0"
  spec.add_development_dependency "sqlite3"
end
