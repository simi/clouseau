require 'json'
require 'open-uri'

module Clouseau
  class Github
    attr_reader :repositories
    def initialize
      @repositories = []
    end
  
    def fetch
      page = 1
      while(github_repositories = (JSON.parse(open(github_search_page_url_for_page(page)).read)["repositories"])).any?
        github_repositories.each {|r| @repositories << r}
        page += 1
      end
    end
  
    private
    def github_search_page_url_for_page(page_number)
      "http://github.com/api/v2/json/repos/search/refinerycms-?start_page=#{page_number}"
    end
  end
end