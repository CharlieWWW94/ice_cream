# frozen_string_literal: true

require 'faker'

namespace :db do
  desc 'Seed DB for development'
  task seed: :environment do
    menus = IceCream::Container['repositories.menus']
    ice_creams = IceCream::Container['repositories.ice_creams']
    menus_ice_creams = IceCream::Container['repositories.menus_ice_creams']

    menus.transaction do
      10.times do
        menus.create(name: Faker::Restaurant.name)
      end
    end

    ice_creams.transaction do
      10.times do
        ice_creams.create(flavour: Faker::Food.dish)
      end
    end

    menus_ice_creams.transaction do
      10.times do
        ice_cream = ice_creams.all.sample
        menu = menus.all.sample
        menus_ice_creams.create(menu_id: menu.id, ice_cream_id: ice_cream.id)
      end
    end
  end
end
