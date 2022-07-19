require "test_helper"

class FailedLoginIpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @failed_login_ip = failed_login_ips(:one)
  end

  test "should get index" do
    get failed_login_ips_url, as: :json
    assert_response :success
  end

  test "should create failed_login_ip" do
    assert_difference('FailedLoginIp.count') do
      post failed_login_ips_url, params: { failed_login_ip: { ip: @failed_login_ip.ip } }, as: :json
    end

    assert_response 201
  end

  test "should show failed_login_ip" do
    get failed_login_ip_url(@failed_login_ip), as: :json
    assert_response :success
  end

  test "should update failed_login_ip" do
    patch failed_login_ip_url(@failed_login_ip), params: { failed_login_ip: { ip: @failed_login_ip.ip } }, as: :json
    assert_response 200
  end

  test "should destroy failed_login_ip" do
    assert_difference('FailedLoginIp.count', -1) do
      delete failed_login_ip_url(@failed_login_ip), as: :json
    end

    assert_response 204
  end
end
