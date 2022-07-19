require "test_helper"

class GeneratedCertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generated_certificate = generated_certificates(:one)
  end

  test "should get index" do
    get generated_certificates_url, as: :json
    assert_response :success
  end

  test "should create generated_certificate" do
    assert_difference('GeneratedCertificate.count') do
      post generated_certificates_url, params: { generated_certificate: { certificate_id: @generated_certificate.certificate_id, company_id: @generated_certificate.company_id, created_by_id: @generated_certificate.created_by_id, parameters: @generated_certificate.parameters, product_ids: @generated_certificate.product_ids, security_level: @generated_certificate.security_level, updated_by_id: @generated_certificate.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show generated_certificate" do
    get generated_certificate_url(@generated_certificate), as: :json
    assert_response :success
  end

  test "should update generated_certificate" do
    patch generated_certificate_url(@generated_certificate), params: { generated_certificate: { certificate_id: @generated_certificate.certificate_id, company_id: @generated_certificate.company_id, created_by_id: @generated_certificate.created_by_id, parameters: @generated_certificate.parameters, product_ids: @generated_certificate.product_ids, security_level: @generated_certificate.security_level, updated_by_id: @generated_certificate.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy generated_certificate" do
    assert_difference('GeneratedCertificate.count', -1) do
      delete generated_certificate_url(@generated_certificate), as: :json
    end

    assert_response 204
  end
end
