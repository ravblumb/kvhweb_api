require "test_helper"

class PersonalizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personalization = personalizations(:one)
  end

  test "should get index" do
    get personalizations_url, as: :json
    assert_response :success
  end

  test "should create personalization" do
    assert_difference('Personalization.count') do
      post personalizations_url, params: { personalization: { created_by_id: @personalization.created_by_id, key: @personalization.key, updated_by_id: @personalization.updated_by_id, user_id: @personalization.user_id, value: @personalization.value } }, as: :json
    end

    assert_response 201
  end

  test "should show personalization" do
    get personalization_url(@personalization), as: :json
    assert_response :success
  end

  test "should update personalization" do
    patch personalization_url(@personalization), params: { personalization: { created_by_id: @personalization.created_by_id, key: @personalization.key, updated_by_id: @personalization.updated_by_id, user_id: @personalization.user_id, value: @personalization.value } }, as: :json
    assert_response 200
  end

  test "should destroy personalization" do
    assert_difference('Personalization.count', -1) do
      delete personalization_url(@personalization), as: :json
    end

    assert_response 204
  end
end
