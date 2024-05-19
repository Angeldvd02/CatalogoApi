# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :add_category, mutation: Mutations::AddCategory
    field :add_product, mutation: Mutations::AddProduct
    field :add_comment, mutation: Mutations::AddComment
    field :update_category, mutation: Mutations::UpdateCategory
    field :update_product, mutation: Mutations::UpdateProduct
    field :update_comment, mutation: Mutations::UpdateComment
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
