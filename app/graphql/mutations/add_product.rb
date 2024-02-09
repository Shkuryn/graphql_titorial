module Mutations
  class AddProduct < BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true
    argument :color, String, required: true
    argument :vendor, String, required: true
    argument :price, Integer, required: false

    field :client_mutation_id, String, null: true
    field :product, Types::ProductType, null: true

    def resolve(title:, description:, color:, vendor:, price: nil)
      product = Product.create!(
        title: title,
        price: price,
        vendor: vendor,
        description: description,
        color: color,
        )

      {
        client_mutation_id: context[:client_mutation_id],
        product: product
      }
    end
  end
end
