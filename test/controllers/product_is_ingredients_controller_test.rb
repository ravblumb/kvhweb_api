require "test_helper"

class ProductIsIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_is_ingredient = product_is_ingredients(:one)
  end

  test "should get index" do
    get product_is_ingredients_url, as: :json
    assert_response :success
  end

  test "should create product_is_ingredient" do
    assert_difference('ProductIsIngredient.count') do
      post product_is_ingredients_url, params: { product_is_ingredient: { deleted_at: @product_is_ingredient.deleted_at, ingredient_id: @product_is_ingredient.ingredient_id, product_id: @product_is_ingredient.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_is_ingredient" do
    get product_is_ingredient_url(@product_is_ingredient), as: :json
    assert_response :success
  end

  test "should update product_is_ingredient" do
    patch product_is_ingredient_url(@product_is_ingredient), params: { product_is_ingredient: { deleted_at: @product_is_ingredient.deleted_at, ingredient_id: @product_is_ingredient.ingredient_id, product_id: @product_is_ingredient.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_is_ingredient" do
    assert_difference('ProductIsIngredient.count', -1) do
      delete product_is_ingredient_url(@product_is_ingredient), as: :json
    end

    assert_response 204
  end
end
