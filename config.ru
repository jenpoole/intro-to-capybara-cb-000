# This is the file shotgun or rackup will read to start your local application server
# It's also the file our test suite is using to define our application ––> Rack::Builder.parse_file('config.ru').first

require 'sinatra'

require_relative './app'

run Application
