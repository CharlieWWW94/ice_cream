# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :ice_creams do
      primary_key :id
      column :flavour, :text, null: false
    end
  end
end
