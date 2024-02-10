require 'rails_helper'

RSpec.describe Mutations::AddProduct, type: :request do
  describe '.resolve' do
    it 'creates a product' do
      expect do
        post '/graphql', params: { query: query }
      end.to change { Product.count }.by(1)
    end

    it 'returns the created product' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['addProduct']['product']

      expect(data).to include(
                        'id'           => be_present,
                        'title'        => 'product_1',
                        'description'  => 'super',
                        'color'        => 'white',
                        'vendor'       => 'apple'
                      )
    end
  end

  def query
    <<~GQL
      mutation {
        addProduct(
          input: {
            title: "product_1",
            description: "super",
            color: "white",
            vendor: "apple"
          }
        ) {
          product {
            id
            title
            description
            color
            vendor
          }
        }
      }
    GQL
  end
end
