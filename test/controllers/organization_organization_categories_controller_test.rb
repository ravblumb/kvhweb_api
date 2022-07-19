require "test_helper"

class OrganizationOrganizationCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_organization_category = organization_organization_categories(:one)
  end

  test "should get index" do
    get organization_organization_categories_url, as: :json
    assert_response :success
  end

  test "should create organization_organization_category" do
    assert_difference('OrganizationOrganizationCategory.count') do
      post organization_organization_categories_url, params: { organization_organization_category: { deleted_at: @organization_organization_category.deleted_at, organization_category_id: @organization_organization_category.organization_category_id, organization_id: @organization_organization_category.organization_id } }, as: :json
    end

    assert_response 201
  end

  test "should show organization_organization_category" do
    get organization_organization_category_url(@organization_organization_category), as: :json
    assert_response :success
  end

  test "should update organization_organization_category" do
    patch organization_organization_category_url(@organization_organization_category), params: { organization_organization_category: { deleted_at: @organization_organization_category.deleted_at, organization_category_id: @organization_organization_category.organization_category_id, organization_id: @organization_organization_category.organization_id } }, as: :json
    assert_response 200
  end

  test "should destroy organization_organization_category" do
    assert_difference('OrganizationOrganizationCategory.count', -1) do
      delete organization_organization_category_url(@organization_organization_category), as: :json
    end

    assert_response 204
  end
end
