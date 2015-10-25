class Api::V1::ProductTypesController < ApplicationController
  before_action :set_product_type, only: [:show, :update, :destroy]

  # GET /api/v1/product_types
  # GET /api/v1/product_types.json
  def index
    @product_types = ProductType.all

    render json: @product_types
  end

  # GET /api/v1/product_types/1
  # GET /api/v1/product_types/1.json
  def show
    render json: @product_type
  end

  # POST /api/v1/product_types
  # POST /api/v1/product_types.json
  def create
    @product_type = ProductType.new(product_type_params)

    if @product_type.save
      render json: @product_type, status: :created, location: @product_type
    else
      render json: @product_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/product_types/1
  # PATCH/PUT /api/v1/product_types/1.json
  def update
    @product_type = ProductType.find(params[:id])

    if @product_type.update(product_type_params)
      head :no_content
    else
      render json: @product_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/product_types/1
  # DELETE /api/v1/product_types/1.json
  def destroy
    @product_type.destroy

    head :no_content
  end

  private

    def set_product_type
      @product_type = ProductType.find(params[:id])
    end

    def product_type_params
      params.require(:product_type).permit(:name, :tax_id)
    end
end
