# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class ShopsMenus < ::IceCream::Repository[:shops_menus]
      def all
        shops_menus.to_a
      end
    end
  end
end
