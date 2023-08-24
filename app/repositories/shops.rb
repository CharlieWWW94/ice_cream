# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class Shops < ::IceCream::Repository[:shops]
      def all
        shops.to_a
      end

      def find(id)
        shops.by_pk(id).one
      end

      def with_current_menu
        shops.with_current_menu
      end
    end
  end
end
