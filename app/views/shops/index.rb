# frozen_string_literal: true

module IceCream
  module Views
    module Shops
      class Index < IceCream::View
        expose :shops do |shops:|
          shops
        end
      end
    end
  end
end
