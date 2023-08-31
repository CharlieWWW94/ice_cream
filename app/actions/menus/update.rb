# frozen_string_literal: true

module IceCream
  module Actions
    module Menus
      class Update < IceCream::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end
