require 'helper'

class TestRubygems < MiniTest::Unit::TestCase
  
  def setup
    stub_rubygems_api
    @rubygems = Clouseau::Rubygems.new
    @rubygems.fetch
  end
  
  def test_rubygems_refinery_gems_count
    assert_equal @rubygems.gems.count, 30
  end
end