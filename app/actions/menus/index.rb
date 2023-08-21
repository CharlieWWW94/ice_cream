# frozen_string_literal: true

module IceCream
  module Actions
    module Menus
      class Index < IceCream::Action
        include Deps[
          menus: 'repositories.menus'
        ]
        def handle(*, response)
          response.render(view, menus: menus.all)
        end
      end
    end
  end
end
