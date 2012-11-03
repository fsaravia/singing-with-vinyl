# encoding: utf-8
require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/json'
require 'vinyl'

class VinylExample < Sinatra::Base

  configure do
    enable :raise_errors
  end

  helpers Sinatra::JSON

end

require_relative 'routes/init'
require_relative 'acl/init'

VinylExample.run!