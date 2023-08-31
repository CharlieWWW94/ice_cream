# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class Show < IceCream::Action
        include Deps[
          shops: 'repositories.shops'
        ]
        def handle(request, response)
          shop_id = request.params[:id]
          puts shops.find(shop_id)
          response.render(view, shop: shops.find(shop_id))
        end
      end
    end
  end
end
