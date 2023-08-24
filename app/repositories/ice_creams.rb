# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class IceCreams < ::IceCream::Repository[:ice_creams]
      def all
        ice_creams.to_a
      end
    end
  end
end
