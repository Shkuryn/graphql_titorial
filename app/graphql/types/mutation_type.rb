# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :add_product, mutation: Mutations::AddProduct
  end
end
