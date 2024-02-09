# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :color, String, null: false
    field :price, Integer, null: false
    field :vendor, String, null: false
  end
end
