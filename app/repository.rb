# frozen_string_literal: true
# move to the persistence folder and register as a provider?
require 'rom-repository'

module IceCream
  class Repository < ROM::Repository::Root
    include Deps['persistence.rom']
  end
end
