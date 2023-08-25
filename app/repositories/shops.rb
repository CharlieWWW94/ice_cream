# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class Shops < ::IceCream::Repository[:shops]
      commands :create, delete: :by_pk
      def all
        shops.to_a
      end

      def find(id)
        shops.by_pk(id).one
      end

      def with_current_menu
        shops.with_current_menu
      end

      # def delete(id)
      #   shops.by_pk(id).command(:delete).call
      # end
    end
  end
end
