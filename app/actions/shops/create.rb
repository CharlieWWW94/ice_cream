# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class Create < IceCream::Action
        include Deps[
          shops: 'repositories.shops'
        ]
        params do
          required(:street_number).filled(:string)
          required(:street).filled(:string)
          required(:city).filled(:string)
          required(:country).filled(:string)
          required(:postcode).filled(:string)
        end

        def handle(request, response)
          halt 422 unless request.params.valid?
          shops.create(request.params.to_h)
          response.redirect_to routes.path(:shops)
        end
      end
    end
  end
end
