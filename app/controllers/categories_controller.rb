class CategoriesController < ApplicationController
    def index
        @categories = Category.all  
    end
    def create
        @product = Product.new(product_params)
        if @product.save
        redirect_to @product, notice: 'Producto creado correctamente.'
        else
        render :new
        end
        end
    
        private
    
    def product_params
        params.require(:product).permit(:name, :description, :stock, :price, :state, :category_id)
    end
    def show
        @product = Product.find(params[:id])
    end
    
    
end
