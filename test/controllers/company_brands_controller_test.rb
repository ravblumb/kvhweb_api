require "test_helper"

class CompanyBrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_brand = company_brands(:one)
  end

  test "should get index" do
    get company_brands_url, as: :json
    assert_response :success
  end

  test "should create company_brand" do
    assert_difference('CompanyBrand.count') do
      post company_brands_url, params: { company_brand: { brand_id: @company_brand.brand_id, company_id: @company_brand.company_id, deleted_at: @company_brand.deleted_at } }, as: :json
    end

    assert_response 201
  end

  test "should show company_brand" do
    get company_brand_url(@company_brand), as: :json
    assert_response :success
  end

  test "should update company_brand" do
    patch company_brand_url(@company_brand), params: { company_brand: { brand_id: @company_brand.brand_id, company_id: @company_brand.company_id, deleted_at: @company_brand.deleted_at } }, as: :json
    assert_response 200
  end

  test "should destroy company_brand" do
    assert_difference('CompanyBrand.count', -1) do
      delete company_brand_url(@company_brand), as: :json
    end

    assert_response 204
  end
end
