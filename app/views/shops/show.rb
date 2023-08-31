# frozen_string_literal: true
require 'hanami/helpers'

module IceCream
  module Views
    module Shops
      class Show < IceCream::View
        expose :shop
      end
    end
  end
end
