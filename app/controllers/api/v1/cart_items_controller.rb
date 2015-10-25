class Api::V1::CartItemsController < ApplicationController
  before_action :set_cart_item, only: [:show, :update, :destroy]

  # GET /api/v1/cart_items
  # GET /api/v1/cart_items.json
  def index
    @cart_items = CartItem.all

    render json: @cart_items
  end

  # GET /api/v1/cart_items/1
  # GET /api/v1/cart_items/1.json
  def show
    render json: @cart_item
  end

  # POST /api/v1/cart_items
  # POST /api/v1/cart_items.json
  def create
    @cart_item = CartItem.new(cart_item_params)

    if @cart_item.save
      render json: @cart_item, status: :created, location: @cart_item
    else
      render json: @cart_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/cart_items/1
  # PATCH/PUT /api/v1/cart_items/1.json
  def update
    @cart_item = CartItem.find(params[:id])

    if @cart_item.update(cart_item_params)
      head :no_content
    else
      render json: @cart_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/cart_items/1
  # DELETE /api/v1/cart_items/1.json
  def destroy
    @cart_item.destroy

    head :no_content
  end

  private

    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    def cart_item_params
      params.require(:cart_item).permit(:product_id, :quantity, :cart_id)
    end
end
