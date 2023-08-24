# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class IceCreams < ROM::Relation[:sql]
        schema(:ice_creams, infer: true) do
          associations do
            has_many :menus_ice_creams
            belongs_to :menu, through: :menus_ice_creams
          end
        end
      end
    end
  end
end
