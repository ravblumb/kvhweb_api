require "test_helper"

class FailedLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @failed_login = failed_logins(:one)
  end

  test "should get index" do
    get failed_logins_url, as: :json
    assert_response :success
  end

  test "should create failed_login" do
    assert_difference('FailedLogin.count') do
      post failed_logins_url, params: { failed_login: { ip: @failed_login.ip, login: @failed_login.login } }, as: :json
    end

    assert_response 201
  end

  test "should show failed_login" do
    get failed_login_url(@failed_login), as: :json
    assert_response :success
  end

  test "should update failed_login" do
    patch failed_login_url(@failed_login), params: { failed_login: { ip: @failed_login.ip, login: @failed_login.login } }, as: :json
    assert_response 200
  end

  test "should destroy failed_login" do
    assert_difference('FailedLogin.count', -1) do
      delete failed_login_url(@failed_login), as: :json
    end

    assert_response 204
  end
end
