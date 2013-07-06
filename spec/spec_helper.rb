require_relative '../application'

require 'rspec'
require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'

Capybara.app = UserLogin

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end