# frozen_string_literal: true

require 'graphql'

module Types
  class ShopType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
  end
end
