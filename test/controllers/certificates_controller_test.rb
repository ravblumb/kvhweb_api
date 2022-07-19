require "test_helper"

class CertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get certificates_url, as: :json
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post certificates_url, params: { certificate: { approved_at: @certificate.approved_at, cancel_reason: @certificate.cancel_reason, cancelled_at: @certificate.cancelled_at, certifier_id: @certificate.certifier_id, comments: @certificate.comments, conditions: @certificate.conditions, data_source: @certificate.data_source, deleted_at: @certificate.deleted_at, expires_at: @certificate.expires_at, is_bishul_yisroel: @certificate.is_bishul_yisroel, is_cholov_yisroel: @certificate.is_cholov_yisroel, is_dairy: @certificate.is_dairy, is_dairy_equipment: @certificate.is_dairy_equipment, is_fish: @certificate.is_fish, is_meat: @certificate.is_meat, is_pas_yisroel: @certificate.is_pas_yisroel, is_passover: @certificate.is_passover, is_yoshon: @certificate.is_yoshon, kosher_group: @certificate.kosher_group, passover_symbol: @certificate.passover_symbol, product_id: @certificate.product_id, security_level: @certificate.security_level, symbol: @certificate.symbol, ukd_dairy_pareve_meat: @certificate.ukd_dairy_pareve_meat, ukd_other_status: @certificate.ukd_other_status, unique_id: @certificate.unique_id } }, as: :json
    end

    assert_response 201
  end

  test "should show certificate" do
    get certificate_url(@certificate), as: :json
    assert_response :success
  end

  test "should update certificate" do
    patch certificate_url(@certificate), params: { certificate: { approved_at: @certificate.approved_at, cancel_reason: @certificate.cancel_reason, cancelled_at: @certificate.cancelled_at, certifier_id: @certificate.certifier_id, comments: @certificate.comments, conditions: @certificate.conditions, data_source: @certificate.data_source, deleted_at: @certificate.deleted_at, expires_at: @certificate.expires_at, is_bishul_yisroel: @certificate.is_bishul_yisroel, is_cholov_yisroel: @certificate.is_cholov_yisroel, is_dairy: @certificate.is_dairy, is_dairy_equipment: @certificate.is_dairy_equipment, is_fish: @certificate.is_fish, is_meat: @certificate.is_meat, is_pas_yisroel: @certificate.is_pas_yisroel, is_passover: @certificate.is_passover, is_yoshon: @certificate.is_yoshon, kosher_group: @certificate.kosher_group, passover_symbol: @certificate.passover_symbol, product_id: @certificate.product_id, security_level: @certificate.security_level, symbol: @certificate.symbol, ukd_dairy_pareve_meat: @certificate.ukd_dairy_pareve_meat, ukd_other_status: @certificate.ukd_other_status, unique_id: @certificate.unique_id } }, as: :json
    assert_response 200
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete certificate_url(@certificate), as: :json
    end

    assert_response 204
  end
end
