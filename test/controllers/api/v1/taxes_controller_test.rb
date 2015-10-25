require 'test_helper'

class Api::V1::TaxesControllerTest < ActionController::TestCase
  setup do
    @api_v1_tax = api_v1_taxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_taxes)
  end

  test "should create api_v1_tax" do
    assert_difference('Api::V1::Tax.count') do
      post :create, api_v1_tax: { name: @api_v1_tax.name, rate: @api_v1_tax.rate }
    end

    assert_response 201
  end

  test "should show api_v1_tax" do
    get :show, id: @api_v1_tax
    assert_response :success
  end

  test "should update api_v1_tax" do
    put :update, id: @api_v1_tax, api_v1_tax: { name: @api_v1_tax.name, rate: @api_v1_tax.rate }
    assert_response 204
  end

  test "should destroy api_v1_tax" do
    assert_difference('Api::V1::Tax.count', -1) do
      delete :destroy, id: @api_v1_tax
    end

    assert_response 204
  end
end
