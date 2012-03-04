require 'helper'

class TestGithub < MiniTest::Unit::TestCase
  
  def setup
    stub_github_api
    @github = Clouseau::Github.new
    @github.fetch
  end
  
  def test_github_refinery_repos_count
    assert_equal @github.repositories.count, 204
  end
end