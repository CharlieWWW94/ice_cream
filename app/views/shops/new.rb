# frozen_string_literal: true
require 'hanami/helpers'

module IceCream
  module Views
    module Shops
      class New < IceCream::View
        # doesnt work :(
        include Hanami::Helpers
        expose :form

        def form
          form_for :shops, '/shops' do
            submit 'Create'
          end
        end
      end
    end
  end
end
