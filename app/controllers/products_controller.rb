class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show update destroy ]

  # GET /product
  def index
    @products = Product.all

    render json: @products
  end

  # GET /product/1
  def show
    render json: @products
  end

  # POST /product
  def create
    @products = Product.new(product_params)

    if @product.save
      render json: @products, status: :created, location: @products
    else
      render json: @products.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product/1
  def update
    if @products.update(product_params)
      render json: @products
    else
      render json: @products.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product/1
  def destroy
    @products.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @products= Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name,:description, :stock, :price, :state , :category_id)
    end    
  end
  