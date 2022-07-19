require "test_helper"

class ParamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @param = params(:one)
  end

  test "should get index" do
    get params_url, as: :json
    assert_response :success
  end

  test "should create param" do
    assert_difference('Param.count') do
      post params_url, params: { param: { created_by_id: @param.created_by_id, key: @param.key, updated_by_id: @param.updated_by_id, value: @param.value } }, as: :json
    end

    assert_response 201
  end

  test "should show param" do
    get param_url(@param), as: :json
    assert_response :success
  end

  test "should update param" do
    patch param_url(@param), params: { param: { created_by_id: @param.created_by_id, key: @param.key, updated_by_id: @param.updated_by_id, value: @param.value } }, as: :json
    assert_response 200
  end

  test "should destroy param" do
    assert_difference('Param.count', -1) do
      delete param_url(@param), as: :json
    end

    assert_response 204
  end
end
