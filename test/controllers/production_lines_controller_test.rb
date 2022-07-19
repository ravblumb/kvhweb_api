require "test_helper"

class ProductionLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_line = production_lines(:one)
  end

  test "should get index" do
    get production_lines_url, as: :json
    assert_response :success
  end

  test "should create production_line" do
    assert_difference('ProductionLine.count') do
      post production_lines_url, params: { production_line: { created_by_id: @production_line.created_by_id, dairy_status: @production_line.dairy_status, deleted_at: @production_line.deleted_at, description: @production_line.description, name: @production_line.name, plant_id: @production_line.plant_id, updated_by_id: @production_line.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show production_line" do
    get production_line_url(@production_line), as: :json
    assert_response :success
  end

  test "should update production_line" do
    patch production_line_url(@production_line), params: { production_line: { created_by_id: @production_line.created_by_id, dairy_status: @production_line.dairy_status, deleted_at: @production_line.deleted_at, description: @production_line.description, name: @production_line.name, plant_id: @production_line.plant_id, updated_by_id: @production_line.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy production_line" do
    assert_difference('ProductionLine.count', -1) do
      delete production_line_url(@production_line), as: :json
    end

    assert_response 204
  end
end
