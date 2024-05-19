module Types
    module Input
      class CommentUpdateType < Types::BaseInputObject
        argument :id, ID
        argument :comment, String
        argument :product_id, String 
      end
    end
  end