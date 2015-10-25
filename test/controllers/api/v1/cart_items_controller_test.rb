require 'test_helper'

class Api::V1::CartItemsControllerTest < ActionController::TestCase
  setup do
    @api_v1_cart_item = api_v1_cart_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_cart_items)
  end

  test "should create api_v1_cart_item" do
    assert_difference('Api::V1::CartItem.count') do
      post :create, api_v1_cart_item: { cart_id: @api_v1_cart_item.cart_id, product_id: @api_v1_cart_item.product_id, quantity: @api_v1_cart_item.quantity }
    end

    assert_response 201
  end

  test "should show api_v1_cart_item" do
    get :show, id: @api_v1_cart_item
    assert_response :success
  end

  test "should update api_v1_cart_item" do
    put :update, id: @api_v1_cart_item, api_v1_cart_item: { cart_id: @api_v1_cart_item.cart_id, product_id: @api_v1_cart_item.product_id, quantity: @api_v1_cart_item.quantity }
    assert_response 204
  end

  test "should destroy api_v1_cart_item" do
    assert_difference('Api::V1::CartItem.count', -1) do
      delete :destroy, id: @api_v1_cart_item
    end

    assert_response 204
  end
end
