# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :shops_menus do
      primary_key :id
      foreign_key :shop_id, :shops
      foreign_key :menu_id, :menus
      column :current, :bool, null: false, default: false
    end
  end
end
