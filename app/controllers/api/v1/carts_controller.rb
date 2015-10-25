class Api::V1::CartsController < ApplicationController
  before_action :set_cart, only: [:show, :update, :destroy]

  # GET /api/v1/carts
  # GET /api/v1/carts.json
  def index
    @carts = Cart.all

    render json: @carts
  end

  # GET /api/v1/carts/1
  # GET /api/v1/carts/1.json
  def show
    render json: @cart
  end

  # POST /api/v1/carts
  # POST /api/v1/carts.json
  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      render json: @cart, status: :created, location: @cart
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/carts/1
  # PATCH/PUT /api/v1/carts/1.json
  def update
    @cart = Cart.find(params[:id])

    if @cart.update(cart_params)
      head :no_content
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/carts/1
  # DELETE /api/v1/carts/1.json
  def destroy
    @cart.destroy

    head :no_content
  end

  private

    def set_cart
      @cart = Cart.find(params[:id])
    end

    def cart_params
      params.require(:cart).permit(:user_id, :status)
    end
end
