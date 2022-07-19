require "test_helper"

class ProductGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_group = product_groups(:one)
  end

  test "should get index" do
    get product_groups_url, as: :json
    assert_response :success
  end

  test "should create product_group" do
    assert_difference('ProductGroup.count') do
      post product_groups_url, params: { product_group: { company_id: @product_group.company_id, created_by_id: @product_group.created_by_id, deleted_at: @product_group.deleted_at, name: @product_group.name, updated_by_id: @product_group.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_group" do
    get product_group_url(@product_group), as: :json
    assert_response :success
  end

  test "should update product_group" do
    patch product_group_url(@product_group), params: { product_group: { company_id: @product_group.company_id, created_by_id: @product_group.created_by_id, deleted_at: @product_group.deleted_at, name: @product_group.name, updated_by_id: @product_group.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_group" do
    assert_difference('ProductGroup.count', -1) do
      delete product_group_url(@product_group), as: :json
    end

    assert_response 204
  end
end
