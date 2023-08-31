# frozen_string_literal: true

module IceCream
  class Routes < Hanami::Routes
    root { 'Hello from Hanami' }
    get '/shops', to: 'shops.index', as: :shops
    get '/menus', to: 'menus.index'
    post '/shops', to: 'shops.create'
    get '/shops/new', to: 'shops.new'
    delete '/shops/:id', to: 'shops.destroy'
    get '/shops/:id', to: 'shops.show', as: :shop
    patch '/shops/:id', to: 'shops.update'
    get "/menus/new", to: "menus.new"
    get "/menus/:id", to: "menus.show", as: :menu
    delete "/menus/:id", to: "menus.destroy"
    patch "/menus/:id", to: "menus.update"
    get "/menus/new", to: "menus.new", as: :new_menu
    post "/menus", to: "menus.create"
  end
end
