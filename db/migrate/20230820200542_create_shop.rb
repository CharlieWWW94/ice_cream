# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :shops do
      primary_key :id
      column :street_number, :text, null: false
      column :street, :text, null: false
      column :city, :text, null: false
      column :country, :text, null: false
      column :postcode, :text, null: false
      column :is_open, :bool, null: false, default: false
    end
  end
end
