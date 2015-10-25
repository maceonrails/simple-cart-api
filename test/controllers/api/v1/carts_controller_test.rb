require 'test_helper'

class Api::V1::CartsControllerTest < ActionController::TestCase
  setup do
    @api_v1_cart = api_v1_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_carts)
  end

  test "should create api_v1_cart" do
    assert_difference('Api::V1::Cart.count') do
      post :create, api_v1_cart: { status: @api_v1_cart.status, user_id: @api_v1_cart.user_id }
    end

    assert_response 201
  end

  test "should show api_v1_cart" do
    get :show, id: @api_v1_cart
    assert_response :success
  end

  test "should update api_v1_cart" do
    put :update, id: @api_v1_cart, api_v1_cart: { status: @api_v1_cart.status, user_id: @api_v1_cart.user_id }
    assert_response 204
  end

  test "should destroy api_v1_cart" do
    assert_difference('Api::V1::Cart.count', -1) do
      delete :destroy, id: @api_v1_cart
    end

    assert_response 204
  end
end
