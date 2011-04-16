require 'rubygems'
require 'sinatra'

# Require partial helper
require 'lib/render_partial'

# Haml and Compass
require 'haml'
require 'compass'

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml

# Configure Compass
configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
end

# Render stylesheets
get '/stylesheets/:file.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"stylesheets/#{params[:file]}", Compass.sass_engine_options)
end

# Application routes
get '/about' do
  haml :about, :layout => :'layouts/page'
end

get '/' do
  haml :index, :layout => :'layouts/application'
end