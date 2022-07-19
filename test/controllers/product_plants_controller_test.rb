require "test_helper"

class ProductPlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_plant = product_plants(:one)
  end

  test "should get index" do
    get product_plants_url, as: :json
    assert_response :success
  end

  test "should create product_plant" do
    assert_difference('ProductPlant.count') do
      post product_plants_url, params: { product_plant: { deleted_at: @product_plant.deleted_at, plant_id: @product_plant.plant_id, product_id: @product_plant.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_plant" do
    get product_plant_url(@product_plant), as: :json
    assert_response :success
  end

  test "should update product_plant" do
    patch product_plant_url(@product_plant), params: { product_plant: { deleted_at: @product_plant.deleted_at, plant_id: @product_plant.plant_id, product_id: @product_plant.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_plant" do
    assert_difference('ProductPlant.count', -1) do
      delete product_plant_url(@product_plant), as: :json
    end

    assert_response 204
  end
end
