module Types
    module Input
      class ProductInputType < Types::BaseInputObject
        argument :name, String, required: true
        argument :description, Text, required: true
        argument :stock, Integer, required: true
        argument :price, Decimal, required: true
        argument :state, String, required: true
      end
    end
  end