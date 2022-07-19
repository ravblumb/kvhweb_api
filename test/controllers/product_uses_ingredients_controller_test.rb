require "test_helper"

class ProductUsesIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_uses_ingredient = product_uses_ingredients(:one)
  end

  test "should get index" do
    get product_uses_ingredients_url, as: :json
    assert_response :success
  end

  test "should create product_uses_ingredient" do
    assert_difference('ProductUsesIngredient.count') do
      post product_uses_ingredients_url, params: { product_uses_ingredient: { deleted_at: @product_uses_ingredient.deleted_at, ingredient_id: @product_uses_ingredient.ingredient_id, product_id: @product_uses_ingredient.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_uses_ingredient" do
    get product_uses_ingredient_url(@product_uses_ingredient), as: :json
    assert_response :success
  end

  test "should update product_uses_ingredient" do
    patch product_uses_ingredient_url(@product_uses_ingredient), params: { product_uses_ingredient: { deleted_at: @product_uses_ingredient.deleted_at, ingredient_id: @product_uses_ingredient.ingredient_id, product_id: @product_uses_ingredient.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_uses_ingredient" do
    assert_difference('ProductUsesIngredient.count', -1) do
      delete product_uses_ingredient_url(@product_uses_ingredient), as: :json
    end

    assert_response 204
  end
end
