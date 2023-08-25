# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class Destroy < IceCream::Action
        include Deps[
          shops: 'repositories.shops'
        ]
        def handle(request, response)
          shop_id = request.params[:shop_id]
          shops.delete(shop_id)
          response.body = { 'success' => "Shop #{shop_id} was deleted" }
          response.status = 200
        end
      end
    end
  end
end
