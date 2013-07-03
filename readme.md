# Sinatra Bootstrap

## A simple Sinatra starting point

Sinatra Bootstrap supports:

* [Haml](http://haml-lang.com/)
* [Sass](http://sass-lang.com/)
* [Compass](https://github.com/chriseppstein/compass)
* [Grid Coordinates](https://github.com/adamstac/grid-coordinates)
* [Meyer Reset](https://github.com/adamstac/meyer-reset)
* [jQuery](http://jquery.com/)
* [Modernizr](http://www.modernizr.com/)

## What is the purpose of Sinatra Bootstrap?

I created Sinatra Bootstrap in order to have a consistent starting point for my Sinatra projects. I like having Haml, Sass and Compass available to me in every project, likewise jQuery and a few JavaScripts make their way into every production as well. A number of helpful rake tasks have also been included.

## How do I get started?

If you're using [RVM](https://rvm.beginrescueend.com/), there's an `.rvmrc` file in the root of the project that automatically sets the Ruby version to 1.9.2 and the gemset to `sinatra-bootstrap`. You'll need to have 1.9.2 in place and a gemset called `sinatra-bootstrap` in place before moving on (only if you are using RVM though). See the [RVM docs](http://beginrescueend.com/rubies/docs/) if you need help or send me message if you get stuck here.

First you'll need to fork the project and then clone your Sinatra Bootstrap to your local machine.

    git clone git@github.com:YOURUSER/sinatra-bootstrap.git

Then we need to run `bundle install` to install the required gems as specified by the [Gemfile](https://github.com/adamstac/sinatra-bootstrap/blob/master/Gemfile).

If you're in a fresh gemset or you don't have Bundler installed, run the following at the command prompt:

    gem install bundler
    
You should see output like this:

    sinatra-bootstrap :: (master) » gem install bundler
    Successfully installed bundler-1.0.14
    1 gem installed
    sinatra-bootstrap :: (master) » bundle install
    Fetching source index for http://rubygems.org/
    Installing chunky_png (1.2.0) 
    Installing fssm (0.2.7) 
    Installing sass (3.1.2) 
    Installing compass (0.11.1) 
    Installing grid-coordinates (1.1.4) 
    Installing haml (3.1.1) 
    Installing rack (1.3.0) 
    Installing shotgun (0.9) 
    Installing tilt (1.3.2) 
    Installing sinatra (1.2.6) 
    Using bundler (1.0.14) 
    Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.

## How do I start the application?

After you've ran `bundle install` and Sinatra as well as the other required gems are installed, start it up by running this command:

    # runs `bundle exec shotgun config.ru` behind the scenes
    rake start

This will start Sinatra Bootstrap on Sinatra's default port 9393 and will now be able to view the application in your web browser at this URL [http://localhost:9393](http://localhost:9393).

You'll also want to open a new terminal window to the same directory and run the Compass watch rake task so we can monitor our Sass files for changes.

    rake styles:watch

Or you just run `compass watch`, either work.

## Helper Rake Tasks

There are a few helper Rake tasks that will help you to clear and compile your Sass stylesheets as well as a few other helpful tasks. There is also a generate task, so you can generate a new project at a defined location based on the bootstrap.

    rake -T
    
    rake generate                   # Generate a new project at dir=foo
    rake start                      # Start the application
    rake styles:clear               # Clear the styles
    rake styles:compile             # Compile new styles
    rake styles:compile:production  # Compile new styles for production
    rake styles:list                # List the styles
    rake styles:stats               # Run compass stats
    rake styles:stats:log           # Create a log of compass stats
    rake styles:watch               # Watch the styles and compile new changes

## License

Copyright (c) 2011 Adam Stacoviak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.