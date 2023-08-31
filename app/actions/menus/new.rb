# frozen_string_literal: true

module IceCream
  module Actions
    module Menus
      class New < IceCream::Action
        def handle(*, response)
          IceCream::Jobs::MenuGenerator.perform_async(1)
          response.render(view)        
        end
      end
    end
  end
end
