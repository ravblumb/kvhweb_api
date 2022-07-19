require "test_helper"

class IngredientGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_group = ingredient_groups(:one)
  end

  test "should get index" do
    get ingredient_groups_url, as: :json
    assert_response :success
  end

  test "should create ingredient_group" do
    assert_difference('IngredientGroup.count') do
      post ingredient_groups_url, params: { ingredient_group: { company_id: @ingredient_group.company_id, created_by_id: @ingredient_group.created_by_id, deleted_at: @ingredient_group.deleted_at, name: @ingredient_group.name, updated_by_id: @ingredient_group.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ingredient_group" do
    get ingredient_group_url(@ingredient_group), as: :json
    assert_response :success
  end

  test "should update ingredient_group" do
    patch ingredient_group_url(@ingredient_group), params: { ingredient_group: { company_id: @ingredient_group.company_id, created_by_id: @ingredient_group.created_by_id, deleted_at: @ingredient_group.deleted_at, name: @ingredient_group.name, updated_by_id: @ingredient_group.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy ingredient_group" do
    assert_difference('IngredientGroup.count', -1) do
      delete ingredient_group_url(@ingredient_group), as: :json
    end

    assert_response 204
  end
end
