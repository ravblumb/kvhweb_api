require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get ingredients_url, as: :json
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post ingredients_url, params: { ingredient: { code: @ingredient.code, comments: @ingredient.comments, company_id: @ingredient.company_id, deleted_at: @ingredient.deleted_at, generic_name: @ingredient.generic_name, ingredient_group_id: @ingredient.ingredient_group_id, is_dairy: @ingredient.is_dairy, is_dairy_equipment: @ingredient.is_dairy_equipment, is_fish: @ingredient.is_fish, is_meat: @ingredient.is_meat, is_passover: @ingredient.is_passover, kosher_status: @ingredient.kosher_status, name: @ingredient.name, previous_id: @ingredient.previous_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient), as: :json
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { code: @ingredient.code, comments: @ingredient.comments, company_id: @ingredient.company_id, deleted_at: @ingredient.deleted_at, generic_name: @ingredient.generic_name, ingredient_group_id: @ingredient.ingredient_group_id, is_dairy: @ingredient.is_dairy, is_dairy_equipment: @ingredient.is_dairy_equipment, is_fish: @ingredient.is_fish, is_meat: @ingredient.is_meat, is_passover: @ingredient.is_passover, kosher_status: @ingredient.kosher_status, name: @ingredient.name, previous_id: @ingredient.previous_id } }, as: :json
    assert_response 200
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete ingredient_url(@ingredient), as: :json
    end

    assert_response 204
  end
end
