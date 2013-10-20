$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_loc/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_loc"
  s.version     = EnjuLoc::VERSION
  s.authors     = ["Masao Takaku, Kosuke Tanabe"]
  s.email       = ["tmasao@acm.org", "kosuke@e23.jp"]
  s.homepage    = "https://github.com/masao/enju_loc"
  s.summary     = "LoC SRU wrapper for Next-L Enju"
  s.description = "This module allow users to search and import bibliographic records from Library of Congress via SRU-based API."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/log/*"] - Dir["spec/dummy/solr/{data,pids}/*"]

  s.add_dependency "rails", "~> 3.2.15"
  s.add_dependency "nokogiri"
  s.add_dependency "lisbn"
  s.add_dependency "library_stdnums"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "vcr"
  s.add_development_dependency "fakeweb"
  #s.add_development_dependency "enju_leaf", "~> 1.1.0.rc5"
  #s.add_development_dependency "enju_question", "~> 0.1.0.pre8"
  s.add_development_dependency "sunspot_solr", "~> 2.0.0"
  s.add_development_dependency "simplecov"
end
