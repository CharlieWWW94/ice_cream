# frozen_string_literal: true

require 'hanami'

module IceCream
  class App < Hanami::App
    config.actions.content_security_policy[:script_src] = "'self' 'unsafe-eval'"
    config.middleware.use Rack::Static, { urls: %w[/dist], root: 'public' }
    config.middleware.use :body_parser, :json
  end
end
