require 'bundler'
require 'minitest/autorun'

Bundler.setup
require 'clouseau'
require 'webmock/minitest'

def stub_github_api
  (1..4).each do |p|
    stub_request(:get, "http://github.com/api/v2/json/repos/search/refinerycms-?start_page=#{p}").
      with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => File.new("test/api/github/#{p}.json").read, :headers => {})
  end
end

def stub_rubygems_api
  (1..4).each do |p|
    stub_request(:get, "http://rubygems.org/api/v1/search.json?query=refinerycms&page=#{p}").
      with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(:status => 200, :body => File.new("test/api/rubygems/#{p}.json").read, :headers => {})
  end
end
