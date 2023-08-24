# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class Shops < ROM::Relation[:sql]
        schema(:shops, infer: true) do
          associations do
            has_many :shops_menus
            has_many :menus, through: :shops_menus, view: :current
          end
        end

        def with_current_menu
          combine(:menus).node(:menus) do |menus|
            menus.where(current: true)
          end
        end
      end
    end
  end
end
