# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject

    class AddProduct < BaseMutation
      argument :title, String, required: true
      argument :description, String, required: true
      argument :color, String, required: true
      argument :vendor, String, required: true
      argument :price, Int, required: true
      argument :vat_rate, Int, required: true

      type Types::ProductType

      def add_product(title: nil, description: nil, vendor: nil, price: nil, color: nil, vat_rate: nil)
        Product.create!(
          title: title,
          price: price,
          vendor: vendor,
          description: description,
          color: color,
          vat_rate: vat_rate,
        )
      end
    end
  end
end
