# frozen_string_literal: true

module Types
  class ImageType < Types::BaseObject
    field :id, ID, null: false
    field :image_id, String
    field :image_type, String
    field :deleted_at, GraphQL::Types::ISO8601DateTime
    field :imageable_type, String
    field :imageable_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
