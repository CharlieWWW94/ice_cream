# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class New < IceCream::Action
        def handle(*, response)
          response.render(view)
        end
      end
    end
  end
end
