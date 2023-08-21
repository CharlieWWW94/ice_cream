# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class Menus < ::IceCream::Repository[:menus]
      def all
        menus.to_a
      end
    end
  end
end
