module Mutations
  class UpdateCategory < Mutations::BaseMutation
    argument :params, Types::Input::CategoryUpdateType, required: true

    field :category, Types::CategoryType, null: false

    def resolve(params:)
      category_params = params.to_h
      category = Category.find(category_params[:id])

      if category.update(category_params.except(:id))
        { category: category }
      else
        GraphQL::ExecutionError.new("Invalid attributes for #{category.class}: #{category.errors.full_messages.join(', ')}")
      end
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Category not found: #{e.message}")
    end
  end
end