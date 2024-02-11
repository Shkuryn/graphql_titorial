require 'rails_helper'

RSpec.describe Types::ShopType do
  describe 'fields' do
    it 'has an id field of type ID' do
      id_field = described_class.fields['id']
      expect(id_field.type.to_type_signature).to eq('ID!')
      expect(id_field.nil?).to be_falsey
    end

    it 'has a name field of type String' do
      name_field = described_class.fields['name']
      expect(name_field.type.to_type_signature).to eq('String!')
      expect(name_field.nil?).to be_falsey
    end
  end
end
