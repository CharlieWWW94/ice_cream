# frozen_string_literal: true

module IceCream
  class Routes < Hanami::Routes
    root { 'Hello from Hanami' }
    get '/shops', to: 'shops.index', as: :shops
    get '/menus', to: 'menus.index'
    post '/shops', to: 'shops.create'
    get '/shops/new', to: 'shops.new'
    delete '/shops/:shop_id', to: 'shops.destroy'
  end
end
