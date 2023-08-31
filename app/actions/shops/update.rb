# frozen_string_literal: true

module IceCream
  module Actions
    module Shops
      class Update < IceCream::Action
        include Deps[
          shops: 'repositories.shops'
        ]

        params do
          required(:id).filled(:integer)

          required(:shop).hash do
            required(:street_number).filled(:integer)
            required(:street).filled(:string)
            required(:city).filled(:string)
            required(:country).filled(:string)
            required(:postcode).filled(:string)
          end
        end

        def handle(request, response)
          halt 422 unless request.params.valid?
          shop_id = request.params[:id]
          updated_shop = shops.update(shop_id, request.params[:shop])
          response.body = { 'shop' => updated_shop.to_h }
        end
      end
    end
  end
end
