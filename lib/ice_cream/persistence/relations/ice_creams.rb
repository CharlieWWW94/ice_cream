# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class IceCreams < ROM::Relation[:sql]
        schema(:ice_creams, infer: true) do
          associations do
            has_many :menus_ice_creams
            # ROM wasn't happy with menus, thought it was singular
            # and pluralised to menuses, specifying the relation fixed.
            belongs_to :menus, through: :menus_ice_creams, relation: :menus
          end
        end
      end
    end
  end
end
