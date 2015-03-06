require 'rack/test'
require 'rspec'

require_file.expand_path '../../app.rb', __FILE__

ENV['RACK_TEST'] = 'test'

module RSpecMixin
	include Rack::Test::Methods
	def app() Sinatra::Application end
end


Rspec.configure { |c| c.include RSpecMixin }

