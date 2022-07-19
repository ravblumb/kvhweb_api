require "test_helper"

class TelcomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telcom = telcoms(:one)
  end

  test "should get index" do
    get telcoms_url, as: :json
    assert_response :success
  end

  test "should create telcom" do
    assert_difference('Telcom.count') do
      post telcoms_url, params: { telcom: { created_by_id: @telcom.created_by_id, deleted_at: @telcom.deleted_at, email: @telcom.email, fax: @telcom.fax, mobile: @telcom.mobile, phone: @telcom.phone, updated_by_id: @telcom.updated_by_id, web_site: @telcom.web_site } }, as: :json
    end

    assert_response 201
  end

  test "should show telcom" do
    get telcom_url(@telcom), as: :json
    assert_response :success
  end

  test "should update telcom" do
    patch telcom_url(@telcom), params: { telcom: { created_by_id: @telcom.created_by_id, deleted_at: @telcom.deleted_at, email: @telcom.email, fax: @telcom.fax, mobile: @telcom.mobile, phone: @telcom.phone, updated_by_id: @telcom.updated_by_id, web_site: @telcom.web_site } }, as: :json
    assert_response 200
  end

  test "should destroy telcom" do
    assert_difference('Telcom.count', -1) do
      delete telcom_url(@telcom), as: :json
    end

    assert_response 204
  end
end
