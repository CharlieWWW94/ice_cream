# frozen_string_literal: true

require 'sidekiq'

module IceCream
  module Jobs
    class MenuGenerator
      include Sidekiq::Job

      include Deps[
        ice_creams: 'repositories.ice_creams',
        menus_ice_creams: 'repositories.menus_ice_creams',
        menus: 'repositories.menus'
      ]

      def perform(menu_id)
        menu = menus.find(menu_id)
        all_ice_creams = ice_creams.all

        5.times do
          menu_ice_cream = all_ice_creams.sample
          menus_ice_creams.create(menu_id: menu.id, ice_cream_id: menu_ice_cream.id)
        end
      end
    end
  end
end
