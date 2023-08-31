# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class Index < IceCream::Action
        include Deps[
          shops: 'repositories.shops'
        ]
        def handle(*, response)
          response.render(
            view,
            shops: shops.with_current_menu,
            routes: routes
          )
        end
      end
    end
  end
end
