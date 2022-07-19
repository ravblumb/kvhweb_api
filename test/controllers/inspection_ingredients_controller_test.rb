require "test_helper"

class InspectionIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspection_ingredient = inspection_ingredients(:one)
  end

  test "should get index" do
    get inspection_ingredients_url, as: :json
    assert_response :success
  end

  test "should create inspection_ingredient" do
    assert_difference('InspectionIngredient.count') do
      post inspection_ingredients_url, params: { inspection_ingredient: { ingredient_id: @inspection_ingredient.ingredient_id, ingredient_report: @inspection_ingredient.ingredient_report, inspection_id: @inspection_ingredient.inspection_id, issue_id: @inspection_ingredient.issue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inspection_ingredient" do
    get inspection_ingredient_url(@inspection_ingredient), as: :json
    assert_response :success
  end

  test "should update inspection_ingredient" do
    patch inspection_ingredient_url(@inspection_ingredient), params: { inspection_ingredient: { ingredient_id: @inspection_ingredient.ingredient_id, ingredient_report: @inspection_ingredient.ingredient_report, inspection_id: @inspection_ingredient.inspection_id, issue_id: @inspection_ingredient.issue_id } }, as: :json
    assert_response 200
  end

  test "should destroy inspection_ingredient" do
    assert_difference('InspectionIngredient.count', -1) do
      delete inspection_ingredient_url(@inspection_ingredient), as: :json
    end

    assert_response 204
  end
end
