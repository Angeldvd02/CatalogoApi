module Types
    module Input
      class CommentInputType < Types::BaseInputObject
        
        argument :comment, String
        argument :product_id, String 
      end
    end
  end