module Types
    module Input
      class CategoryUpdateType < Types::BaseInputObject
        argument :id, ID
        argument :name, String
      end
    end
  end