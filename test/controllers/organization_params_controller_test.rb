require "test_helper"

class OrganizationParamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_param = organization_params(:one)
  end

  test "should get index" do
    get organization_params_url, as: :json
    assert_response :success
  end

  test "should create organization_param" do
    assert_difference('OrganizationParam.count') do
      post organization_params_url, params: { organization_param: { created_by_id: @organization_param.created_by_id, key: @organization_param.key, organization_id: @organization_param.organization_id, updated_by_id: @organization_param.updated_by_id, value: @organization_param.value } }, as: :json
    end

    assert_response 201
  end

  test "should show organization_param" do
    get organization_param_url(@organization_param), as: :json
    assert_response :success
  end

  test "should update organization_param" do
    patch organization_param_url(@organization_param), params: { organization_param: { created_by_id: @organization_param.created_by_id, key: @organization_param.key, organization_id: @organization_param.organization_id, updated_by_id: @organization_param.updated_by_id, value: @organization_param.value } }, as: :json
    assert_response 200
  end

  test "should destroy organization_param" do
    assert_difference('OrganizationParam.count', -1) do
      delete organization_param_url(@organization_param), as: :json
    end

    assert_response 204
  end
end
