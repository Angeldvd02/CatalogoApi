module Mutations
    class DeleteProduct < Mutations::BaseMutation
      argument :id, ID, required: true
  
      field :product, Types::ProductType, null: false
  
      def resolve(id:)
        product = Product.find(id)
  
        if product.destroy
          { product: product }
        else
          GraphQL::ExecutionError.new("Failed to delete product")
        end
      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("product not found: #{e.message}")
      end
    end
  end