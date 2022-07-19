require "test_helper"

class OrganizationCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_category = organization_categories(:one)
  end

  test "should get index" do
    get organization_categories_url, as: :json
    assert_response :success
  end

  test "should create organization_category" do
    assert_difference('OrganizationCategory.count') do
      post organization_categories_url, params: { organization_category: { code: @organization_category.code, comments: @organization_category.comments, commercial_above: @organization_category.commercial_above, commercial_below: @organization_category.commercial_below, created_by_id: @organization_category.created_by_id, deleted_at: @organization_category.deleted_at, is_food_service: @organization_category.is_food_service, is_industrial: @organization_category.is_industrial, name: @organization_category.name, retail_above: @organization_category.retail_above, retail_below: @organization_category.retail_below, updated_by_id: @organization_category.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show organization_category" do
    get organization_category_url(@organization_category), as: :json
    assert_response :success
  end

  test "should update organization_category" do
    patch organization_category_url(@organization_category), params: { organization_category: { code: @organization_category.code, comments: @organization_category.comments, commercial_above: @organization_category.commercial_above, commercial_below: @organization_category.commercial_below, created_by_id: @organization_category.created_by_id, deleted_at: @organization_category.deleted_at, is_food_service: @organization_category.is_food_service, is_industrial: @organization_category.is_industrial, name: @organization_category.name, retail_above: @organization_category.retail_above, retail_below: @organization_category.retail_below, updated_by_id: @organization_category.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy organization_category" do
    assert_difference('OrganizationCategory.count', -1) do
      delete organization_category_url(@organization_category), as: :json
    end

    assert_response 204
  end
end
