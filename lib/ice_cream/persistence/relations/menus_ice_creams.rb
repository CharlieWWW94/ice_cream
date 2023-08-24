# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class MenusIceCreams < ROM::Relation[:sql]
        schema(:menus_ice_creams, infer: true) do
          associations do
            belongs_to :menu
            belongs_to :ice_cream
          end
        end
      end
    end
  end
end
