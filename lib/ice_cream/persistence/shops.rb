# frozen_string_literal: true

module IceCream
  module Persistence
    module Relations
      class Shops < ROM::Relation[:sql]
        schema(:shops, infer: true)
      end
    end
  end
end
