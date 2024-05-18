module Types
    module Input
      class ProductInputType < Types::BaseInputObject
        argument :name, String, required: true
        argument :description, String, required: true
        argument :stock, Integer, required: true
        argument :price, Float, required: true
        argument :state, String, required: true
        argument :category_id, String, required: true
      end
    end
  end