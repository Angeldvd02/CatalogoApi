module Mutations
    class DeleteComment < Mutations::BaseMutation
      argument :id, ID, required: true
  
      field :comment, Types::CommentType, null: false
  
      def resolve(id:)
        comment = Comment.find(id)
  
        if comment.destroy
          { comment: comment }
        else
          GraphQL::ExecutionError.new("Failed to delete comment")
        end
      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("Comment not found: #{e.message}")
      end
    end
  end