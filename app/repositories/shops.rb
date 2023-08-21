# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class Shops < ::IceCream::Repository[:shops]
      def all
        shops.to_a
      end

      def first
        shops.combine(:menus).first.to_h
      end

      def find(id)
        shops.by_pk(id).one
      end

      def with_current_menu
        shops.all_with_current_menu
      end
    end
  end
end
