# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class Menus < ::IceCream::Repository[:menus]
      commands :create

      def all
        menus.to_a
      end

      def with_ice_creams
        menus.with_ice_creams
      end

      def find(id)
        menus.by_pk(id).one
      end

      def create_with_ice_creams(menu)
        menus.combine(menus_ice_creams: :ice_creams).command(:create).call(menu)
      end
    end
  end
end
