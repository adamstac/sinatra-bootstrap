require 'rubygems'
require 'sinatra'
Sinatra::Application.default_options.merge!(
:run => false,
:enf => :production
)
require 'sinatra-sings.rb'
run Sinatra::Application

