module Mutations
    class DeleteCategory < Mutations::BaseMutation
      argument :id, ID, required: true
  
      field :category, Types::CategoryType, null: false
  
      def resolve(id:)
        category = Category.find(id)
  
        if category.destroy
          { category: category }
        else
          GraphQL::ExecutionError.new("Failed to delete category")
        end
      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("Category not found: #{e.message}")
      end
    end
  end