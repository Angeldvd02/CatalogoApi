module Queries
    class FetchImages < Queries::BaseQuery
  
      type [Types::ImageType], null: false
  
      def resolve
        Image.all.order(created_at: :desc)
      end
    end
  end