# spec/graphql/types/query_type_spec.rb

require 'rails_helper'

RSpec.describe Types::QueryType do
  describe '#all_products' do
    let!(:product1) { create(:product) }
    let!(:product2) { create(:product) }

    it 'returns all products' do
      query_string = <<-GRAPHQL
        query {
          allProducts {
            id
            title
          }
        }
      GRAPHQL

      result = GraphqlTutorialSchema.execute(query_string)
      all_products = result['data']['allProducts']

      expect(all_products.count).to eq(2)

      product1_attributes = all_products.find { |product| product['id'] == product1.id.to_s }
      expect(product1_attributes).to include(
        'id' => product1.id.to_s,
        'title' => product1.title
      )

      product2_attributes = all_products.find { |product| product['id'] == product2.id.to_s }
      expect(product2_attributes).to include(
        'id' => product2.id.to_s,
        'title' => product2.title
      )
    end
  end
end
