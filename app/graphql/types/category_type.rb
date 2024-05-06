# frozen_string_literal: true

module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :deleted_at, GraphQL::Types::ISO8601DateTime
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :store_id, String
    field :products, [Types::ProductType], null: true
  end
end
