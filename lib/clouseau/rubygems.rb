require 'json'
require 'open-uri'

module Clouseau
  class Rubygems
    attr_reader :gems
    def initialize
      @gems = []
    end
  
    def fetch
      page = 1
      while(rubygems_gems = (JSON.parse(open(rubygems_search_page_url_for_page(page)).read))).any?
        rubygems_gems.each {|r| @gems << r}
        page += 1
      end
    end
    
    private
    def rubygems_search_page_url_for_page(page_number)
      "http://rubygems.org/api/v1/search.json?query=refinerycms&page=#{page_number}"
    end
  end
end