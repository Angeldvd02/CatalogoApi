# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :add_category, mutation: Mutations::AddCategory
    field :add_product, mutation: Mutations::AddProduct
    field :add_comment, mutation: Mutations::AddComment
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
