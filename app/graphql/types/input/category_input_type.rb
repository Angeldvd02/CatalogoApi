module Types
    module Input
      class CategoryInputType < Types::BaseInputObject
        argument :name, String, required: true
      end
    end
  end