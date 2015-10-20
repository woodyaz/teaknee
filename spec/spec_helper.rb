ENV['RACK_ENV'] = 'test'

require_relative '../teaknee'
require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end
