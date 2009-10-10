# Borrowed from Tanner Burson: http://github.com/tannerburson
# http://github.com/adamstac/sinatra-plugins/blob/master/render_partial.rb

module Sinatra
  module RenderPartial
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end
 
  helpers RenderPartial
end