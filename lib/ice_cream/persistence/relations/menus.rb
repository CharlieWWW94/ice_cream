# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class Menus < ROM::Relation[:sql]
        schema(:menus, infer: true) do
          associations do
            has_many :shops_menus
            belongs_to :shops, through: :shops_menus
          end
        end
      end
    end
  end
end
