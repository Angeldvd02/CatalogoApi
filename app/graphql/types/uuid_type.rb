# app/graphql/types/uuid_type.rb
module Types
    class UuidType < Types::BaseScalar
      description 'A UUID'
  
      def self.coerce_input(input_value, _context)
        input_value
      end
  
      def self.coerce_result(ruby_value, _context)
        ruby_value.to_s
      end
    end
  end
  