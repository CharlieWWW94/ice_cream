# frozen_string_literal: true

module IceCream
  module Actions
    module Menus
      class Create < IceCream::Action
        include Deps[
          menus: 'repositories.menus'
        ]

        params do
          required(:name).filled(:string) 
        end

        def handle(request, response)
          halt 422 unless request.params.valid? 
          response.body = self.class.name
          menus.create(request.params.to_h)
        end
      end
    end
  end
end
