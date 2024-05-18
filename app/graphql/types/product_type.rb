# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :stock, Integer, null: false
    field :price, Float, null: false
    field :state, String, null: false
    field :category_id, String
    field :deleted_at, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :category, Types::CategoryType, null: false
    field :comments, [Types::CommentType], null: false
    def category
    object.category
    end
    def comments
      object.comments
    end
  end
end
