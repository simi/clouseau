# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "clouseau/version"

Gem::Specification.new do |s|
  s.name        = "clouseau"
  s.version     = Clouseau::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josef Šimánek"]
  s.email       = ["retro@ballgag.cz"]
  s.homepage    = "https://github.com/simi/clouseau"
  s.summary     = %q{Refinery CMS gem and repositories inspector}
  s.description = %q{Refinery CMS gem and repositories finder}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]
  
  s.add_development_dependency "webmock"
  s.add_development_dependency "minitest"  
end
