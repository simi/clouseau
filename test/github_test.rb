require 'helper'

class TestGithub < MiniTest::Unit::TestCase
  
  def setup
    klass = Class.new(Clouseau::Github) do
      def fetch
        page = 1
        while(github_repositories = (JSON.parse(IO.read("test/api/github/#{page}.json"))["repositories"])).any?
          github_repositories.each {|r| repositories << r}
          page += 1
        end      
      end
    end
    @github = klass.new
    @github.fetch
    
  end
  
  def test_github_refinery_repos_count
    assert_equal @github.repositories.count, 204
  end
end