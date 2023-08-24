# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class Create < IceCream::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end
