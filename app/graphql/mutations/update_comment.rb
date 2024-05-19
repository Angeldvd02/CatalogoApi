module Mutations
  class UpdateComment < Mutations::BaseMutation
    argument :params, Types::Input::CommentUpdateType, required: true

    field :comment, Types::CommentType, null: false

    def resolve(params:)
      comment_params = params.to_h
      comment = Comment.find(comment_params[:id])

      if comment.update(comment_params.except(:id))
        { comment: comment }
      else
        GraphQL::ExecutionError.new("Invalid attributes for #{comment.class}: #{comment.errors.full_messages.join(', ')}")
      end
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Comment not found: #{e.message}")
    end
  end
end