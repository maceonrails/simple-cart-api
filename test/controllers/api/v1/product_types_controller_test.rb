require 'test_helper'

class Api::V1::ProductTypesControllerTest < ActionController::TestCase
  setup do
    @api_v1_product_type = api_v1_product_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_product_types)
  end

  test "should create api_v1_product_type" do
    assert_difference('Api::V1::ProductType.count') do
      post :create, api_v1_product_type: { name: @api_v1_product_type.name, tax_id: @api_v1_product_type.tax_id }
    end

    assert_response 201
  end

  test "should show api_v1_product_type" do
    get :show, id: @api_v1_product_type
    assert_response :success
  end

  test "should update api_v1_product_type" do
    put :update, id: @api_v1_product_type, api_v1_product_type: { name: @api_v1_product_type.name, tax_id: @api_v1_product_type.tax_id }
    assert_response 204
  end

  test "should destroy api_v1_product_type" do
    assert_difference('Api::V1::ProductType.count', -1) do
      delete :destroy, id: @api_v1_product_type
    end

    assert_response 204
  end
end
