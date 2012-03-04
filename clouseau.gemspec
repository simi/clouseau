# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "clouseau/version"

Gem::Specification.new do |s|
  s.name        = "clouseau"
  s.version     = Clouseau::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "clouseau"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]
end
