# Thanks Tanner Burson
# https://github.com/tannerburson/sinatra-plugins/blob/master/render_partial.rb

module Sinatra
  module RenderPartial
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end

  helpers RenderPartial
end
