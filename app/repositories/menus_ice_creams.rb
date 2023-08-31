# frozen_string_literal: true

require 'rom-repository'

module IceCream
  module Repositories
    class MenusIceCreams < ::IceCream::Repository[:menus_ice_creams]
      commands :create
    end
  end
end
