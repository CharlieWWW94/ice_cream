# frozen_string_literal: true

module IceCream
  module Actions
    module Menus
      class Show < IceCream::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end
