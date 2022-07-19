require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_url, as: :json
    assert_response :success
  end

  test "should create brand" do
    assert_difference('Brand.count') do
      post brands_url, params: { brand: { created_by_id: @brand.created_by_id, data_source: @brand.data_source, deleted_at: @brand.deleted_at, hide_from_web: @brand.hide_from_web, loc_comments: @brand.loc_comments, name: @brand.name, producer_id: @brand.producer_id, show_loc_comment_on_web: @brand.show_loc_comment_on_web, updated_by_id: @brand.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show brand" do
    get brand_url(@brand), as: :json
    assert_response :success
  end

  test "should update brand" do
    patch brand_url(@brand), params: { brand: { created_by_id: @brand.created_by_id, data_source: @brand.data_source, deleted_at: @brand.deleted_at, hide_from_web: @brand.hide_from_web, loc_comments: @brand.loc_comments, name: @brand.name, producer_id: @brand.producer_id, show_loc_comment_on_web: @brand.show_loc_comment_on_web, updated_by_id: @brand.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy brand" do
    assert_difference('Brand.count', -1) do
      delete brand_url(@brand), as: :json
    end

    assert_response 204
  end
end
