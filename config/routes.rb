# frozen_string_literal: true

module IceCream
  class Routes < Hanami::Routes
    root { 'Hello from Hanami' }
    get '/shops', to: 'shops.index'
  end
end
