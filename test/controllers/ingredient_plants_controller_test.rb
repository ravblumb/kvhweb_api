require "test_helper"

class IngredientPlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_plant = ingredient_plants(:one)
  end

  test "should get index" do
    get ingredient_plants_url, as: :json
    assert_response :success
  end

  test "should create ingredient_plant" do
    assert_difference('IngredientPlant.count') do
      post ingredient_plants_url, params: { ingredient_plant: { deleted_at: @ingredient_plant.deleted_at, ingredient_id: @ingredient_plant.ingredient_id, plant_id: @ingredient_plant.plant_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ingredient_plant" do
    get ingredient_plant_url(@ingredient_plant), as: :json
    assert_response :success
  end

  test "should update ingredient_plant" do
    patch ingredient_plant_url(@ingredient_plant), params: { ingredient_plant: { deleted_at: @ingredient_plant.deleted_at, ingredient_id: @ingredient_plant.ingredient_id, plant_id: @ingredient_plant.plant_id } }, as: :json
    assert_response 200
  end

  test "should destroy ingredient_plant" do
    assert_difference('IngredientPlant.count', -1) do
      delete ingredient_plant_url(@ingredient_plant), as: :json
    end

    assert_response 204
  end
end
