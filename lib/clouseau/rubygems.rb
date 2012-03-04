require 'json'
require 'open-uri'

module Clouseau
  class Rubygems
    attr_reader :gems
    def initialize
      @gems = []
    end
  
    def fetch
      @gems = JSON.parse(open("http://rubygems.org/api/v1/search.json?query=refinerycms").read)
    end
  end
end