# Load before Sinatra
require 'rubygems'
require 'compass' # must be loaded before sinatra

# Load Sinatra
require 'sinatra'
require 'lib/render_partial'

# Load after Sinatra
require 'haml' # must be loaded after sinatra

# Set Sinatra's variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'

# Configure Compass
configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
end

# At a minimum the main sass file must reside within the views directory
# We create /views/stylesheets where all our sass files can safely reside
get '/stylesheets/:file.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"stylesheets/#{params[:file]}", Compass.sass_engine_options)
end

get '/about' do
  haml :about, :layout => :'layouts/page'
end

get '/' do
  haml :index, :layout => :'layouts/application'
end