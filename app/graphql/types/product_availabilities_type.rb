# frozen_string_literal: true

module Types
  class ProductAvailabilitiesType < Types::BaseObject
    field :shop_id, ID, null: false
    field :product_id, ID, null: false
    field :count, Integer
    field :product, ProductType
  end
end
