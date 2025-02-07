module Types
    module Input
      class ProductInputType < Types::BaseInputObject
        
        argument :name, String
        argument :description, String
        argument :stock, Integer
        argument :price, Float
        argument :state, String
        argument :category_id, String
      end
    end
  end