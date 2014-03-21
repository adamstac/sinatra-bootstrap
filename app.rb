require 'rubygems'
require 'sinatra/base'
require 'haml'

require_relative 'helpers/render_partial'

class SinatraBootstrap < Sinatra::Base
  helpers RenderPartial
  
  configure do
    $stdout.sync = true
  end

  get '/' do
    haml :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
