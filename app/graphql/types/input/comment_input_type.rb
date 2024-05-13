module Types
    module Input
      class CommentInputType < Types::BaseInputObject
        argument :comment, String, required: true
      end
    end
  end