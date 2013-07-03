# Sinatra Bootstrap

## A simple Sinatra starting point

Sinatra Bootstrap supports:

* [Haml](http://haml-lang.com/)
* [Sass](http://sass-lang.com/)
* [Compass](https://github.com/chriseppstein/compass)
* [jQuery](http://jquery.com/)

## What is the purpose of Sinatra Bootstrap?

I created Sinatra Bootstrap in order to have a consistent starting point for my Sinatra projects. I like having Haml, Sass and Compass available to me in every project, likewise jQuery makes its way into every production as well. A number of helpful rake tasks have also been included.

## How do I get started?

    bundle install

## How do I start the application?

Start the app by running:

    rake s

This rake command runs `bundle exec shotgun config.ru` behind the scenes for you and starts the app on Sinatra's default port 9393 and will now be able to view the application in your web browser at this URL [http://localhost:9393](http://localhost:9393).

You'll also want to open a new terminal window to the same directory and run `compass watch` to watch the Sass files for changes.

## Helper Rake Tasks

There are a few helper Rake tasks that will help you to clear and compile your Sass stylesheets as well as a few other helpful tasks. There is also a generate task, so you can generate a new project at a defined location based on the bootstrap.

    rake -T

    rake css:clear         # Clear the CSS
    rake css:compile       # Compile CSS
    rake css:compile:prod  # Compile CSS for production
    rake generate          # Generate a new project at dir=foo
    rake s                 # Run the app

## License

Copyright (c) Adam Stacoviak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
