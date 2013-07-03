require './app'

# Configuration to use when running within Sinatra
project_path          = Sinatra::Application.root

# HTTP paths
http_path             = '/'
http_stylesheets_path = '/stylesheets'
http_images_path      = '/images'
http_javascripts_path = '/javascripts'

# File system locations
css_dir               = File.join 'public', 'stylesheets'
sass_dir              = File.join 'stylesheets'
images_dir            = File.join 'public', 'images'
javascripts_dir       = File.join 'public', 'javascripts'

# Syntax preference
preferred_syntax      = :scss

# Determine whether Compass generates relative or absolute paths
relative_assets       = false

# Determines whether line comments should be added to compiled css for easier debugging
line_comments         = false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = :expanded

# Learn more: http://beta.compass-style.org/help/tutorials/configuration-reference/
