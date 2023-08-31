# frozen_string_literal: true

module IceCream
  module Views
    module Menus
      class Index < IceCream::View
        expose :menus do |menus:|
            menus
        end
      end
    end
  end
end
