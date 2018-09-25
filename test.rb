ENV['RACK_ENV'] = 'test'

require 'bundler/setup'
require 'minitest/autorun'
require 'rack/test'

require_relative 'app'

class ApplicationTest < MiniTest::Test
  include Rack::Test::Methods

  def app
    Application
  end

  def test_app
    get '/'

    assert last_response.ok?
    assert_equal 'Hello World!', last_response.body
  end
end
