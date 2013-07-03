require 'rubygems'
require 'sinatra'
require 'haml'

# Helpers
require './helpers/render_partial'

get '/' do
  haml :index
end
