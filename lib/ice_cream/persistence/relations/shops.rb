# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class Shops < ROM::Relation[:sql]
        schema(:shops, infer: true) do
          associations do
            has_many :shops_menus
            has_many :menus, through: :shops_menus
          end
        end

        def all_with_current_menu
          combine(shops_menus: :menus).node(:shops_menus) do |shops_menus_relation|
            shops_menus_relation.where(current: true)
          end
        end
      end
    end
  end
end
