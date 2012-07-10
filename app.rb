require 'rubygems'
require 'sinatra'
require 'haml'
require 'coffee-script'
require 'v8'

# Helpers
require './lib/render_partial'

class CoffeeHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/views/javascripts'

  get '/javascripts/*.js' do
    filename = params[:splat].first
    coffee filename.to_sym
  end
end

use CoffeeHandler

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml

# Application routes
get '/' do
  haml :index, :layout => :'layouts/application'
end

get '/about' do
  haml :about, :layout => :'layouts/page'
end
