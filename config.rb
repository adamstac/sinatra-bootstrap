if defined?(Sinatra)
  # This is the configuration to use when running within sinatra
  project_path = Sinatra::Application.root
  environment = :development
else
  # this is the configuration to use when running within the compass command line tool.
  css_dir = File.join 'public', 'stylesheets'
  # Determine whether Compass asset helper functions generate relative
  # or absolute paths
  relative_assets = true
  environment = :production
end

# Compass Configuration

require 'grid-coordinates'
require 'meyer-reset'

# HTTP paths
http_path             = '/'
http_stylesheets_path = '/stylesheets'
http_images_path      = '/images'
http_javascripts_path = '/javascripts'

# File system locations
sass_dir              = File.join 'views', 'stylesheets'
images_dir            = File.join 'public', 'images'
javascripts_dir       = File.join 'public', 'javascripts'

# Set to true for easier debugging
line_comments         = false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = :expanded

# Learn more: http://compass-style.org/docs/tutorials/configuration-reference/
