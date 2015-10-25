require 'test_helper'

class Api::V1::ProductsControllerTest < ActionController::TestCase
  setup do
    @api_v1_product = api_v1_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_products)
  end

  test "should create api_v1_product" do
    assert_difference('Api::V1::Product.count') do
      post :create, api_v1_product: { category_id: @api_v1_product.category_id, import_duty: @api_v1_product.import_duty, name: @api_v1_product.name, price: @api_v1_product.price }
    end

    assert_response 201
  end

  test "should show api_v1_product" do
    get :show, id: @api_v1_product
    assert_response :success
  end

  test "should update api_v1_product" do
    put :update, id: @api_v1_product, api_v1_product: { category_id: @api_v1_product.category_id, import_duty: @api_v1_product.import_duty, name: @api_v1_product.name, price: @api_v1_product.price }
    assert_response 204
  end

  test "should destroy api_v1_product" do
    assert_difference('Api::V1::Product.count', -1) do
      delete :destroy, id: @api_v1_product
    end

    assert_response 204
  end
end
