class CategoriesController < ApplicationController
    
    before_action :set_category, only: %i[ show update destroy ]

    # GET /product
    def index
      @categories = Category.all
  
      render json: @categories
    end
  
    # GET /product/1
    def show
      render json: @categories
    end
  
    # POST /product
    def create
      @categories = Category.new(product_params)
  
      if @categories.save
        render json: @categories, status: :created, location: @categories
      else
        render json: @categories.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /product/1
    def update
      if @categories.update(product_params)
        render json: @categories
      else
        render json: @categories.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /product/1
    def destroy
      @categories.destroy!
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @categories = Category.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def product_params
        params.require(:category).permit(:name, :store_id)
      end    

    
end
