module Mutations
  class UpdateProduct < Mutations::BaseMutation
    argument :params, Types::Input::ProductUpdateType, required: true

    field :product, Types::ProductType, null: false

    def resolve(params:)
      product_params = params.to_h
      product = Product.find(product_params[:id])

      if product.update(product_params.except(:id))
        { product: product }
      else
        GraphQL::ExecutionError.new("Invalid attributes for #{product.class}: #{product.errors.full_messages.join(', ')}")
      end
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Category not found: #{e.message}")
    end
  end
end