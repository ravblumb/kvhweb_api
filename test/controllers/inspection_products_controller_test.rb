require "test_helper"

class InspectionProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspection_product = inspection_products(:one)
  end

  test "should get index" do
    get inspection_products_url, as: :json
    assert_response :success
  end

  test "should create inspection_product" do
    assert_difference('InspectionProduct.count') do
      post inspection_products_url, params: { inspection_product: { inspection_id: @inspection_product.inspection_id, issue_id: @inspection_product.issue_id, product_id: @inspection_product.product_id, product_report: @inspection_product.product_report } }, as: :json
    end

    assert_response 201
  end

  test "should show inspection_product" do
    get inspection_product_url(@inspection_product), as: :json
    assert_response :success
  end

  test "should update inspection_product" do
    patch inspection_product_url(@inspection_product), params: { inspection_product: { inspection_id: @inspection_product.inspection_id, issue_id: @inspection_product.issue_id, product_id: @inspection_product.product_id, product_report: @inspection_product.product_report } }, as: :json
    assert_response 200
  end

  test "should destroy inspection_product" do
    assert_difference('InspectionProduct.count', -1) do
      delete inspection_product_url(@inspection_product), as: :json
    end

    assert_response 204
  end
end
