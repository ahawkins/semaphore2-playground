#!/usr/bin/env ruby

require 'bundler/setup'
require 'sinatra/base'

class Application < Sinatra::Base
  get '/' do
    status 200
    body 'Hello World!'
  end
end
