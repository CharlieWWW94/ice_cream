# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class Menus < ROM::Relation[:sql]
        schema(:menus, infer: true) do
          associations do
            has_many :shops_menus
            belongs_to :shops, through: :shops_menus

            has_many :menus_ice_creams
            has_many :ice_creams, through: :menus_ice_creams
          end
        end

        def current_for(shop_id)
          inner_join(:shops_menus).where(current: true, shop_id: shop_id).one
        end

        def current
          select_append(shops_menus[:current])
        end

        def with_ice_creams
          combine(:ice_creams)
        end
      end
    end
  end
end
