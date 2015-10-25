class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /api/v1/products
  # GET /api/v1/products.json
  def index
    @products = Product.all

    render json: @products, include: [:tax, :taxes, :product_types, :unit]
  end

  # GET /api/v1/products/1
  # GET /api/v1/products/1.json
  def show
    render json: @product
  end

  # POST /api/v1/products
  # POST /api/v1/products.json
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/products/1
  # PATCH/PUT /api/v1/products/1.json
  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      head :no_content
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/products/1
  # DELETE /api/v1/products/1.json
  def destroy
    @product.destroy

    head :no_content
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price, :import_duty, :category_id)
    end
end
