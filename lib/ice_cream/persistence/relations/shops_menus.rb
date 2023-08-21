# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class ShopsMenus < ROM::Relation[:sql]
        schema(:shops_menus, infer: true) do
          associations do
            belongs_to :shop
            belongs_to :menu
          end
        end
      end
    end
  end
end
