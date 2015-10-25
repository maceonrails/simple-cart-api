require 'test_helper'

class Api::V1::CategoriesControllerTest < ActionController::TestCase
  setup do
    @api_v1_category = api_v1_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_categories)
  end

  test "should create api_v1_category" do
    assert_difference('Api::V1::Category.count') do
      post :create, api_v1_category: { name: @api_v1_category.name, tax_id: @api_v1_category.tax_id }
    end

    assert_response 201
  end

  test "should show api_v1_category" do
    get :show, id: @api_v1_category
    assert_response :success
  end

  test "should update api_v1_category" do
    put :update, id: @api_v1_category, api_v1_category: { name: @api_v1_category.name, tax_id: @api_v1_category.tax_id }
    assert_response 204
  end

  test "should destroy api_v1_category" do
    assert_difference('Api::V1::Category.count', -1) do
      delete :destroy, id: @api_v1_category
    end

    assert_response 204
  end
end
