# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :menus_ice_creams do
      primary_key :id
      foreign_key :menu_id, :menus, null: false
      foreign_key :ice_cream_id, :ice_creams, null: false
    end
  end
end
