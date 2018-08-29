#!/usr/bin/env ruby

require 'bundler/setup'
require 'sinatra'

get '/' do
  status 200
  body 'Hello World!'
end
