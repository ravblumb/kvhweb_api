require "test_helper"

class CertificationLettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certification_letter = certification_letters(:one)
  end

  test "should get index" do
    get certification_letters_url, as: :json
    assert_response :success
  end

  test "should create certification_letter" do
    assert_difference('CertificationLetter.count') do
      post certification_letters_url, params: { certification_letter: { certifier_id: @certification_letter.certifier_id, comments: @certification_letter.comments, company_id: @certification_letter.company_id, conditions: @certification_letter.conditions, content_type: @certification_letter.content_type, created_by_id: @certification_letter.created_by_id, data_source: @certification_letter.data_source, deleted_at: @certification_letter.deleted_at, expires_at: @certification_letter.expires_at, file_digest: @certification_letter.file_digest, file_name: @certification_letter.file_name, file_uploaded: @certification_letter.file_uploaded, is_batch: @certification_letter.is_batch, is_passover: @certification_letter.is_passover, issued_at: @certification_letter.issued_at, kosher_group: @certification_letter.kosher_group, passover_symbol: @certification_letter.passover_symbol, producer_id: @certification_letter.producer_id, symbol: @certification_letter.symbol, updated_by_id: @certification_letter.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show certification_letter" do
    get certification_letter_url(@certification_letter), as: :json
    assert_response :success
  end

  test "should update certification_letter" do
    patch certification_letter_url(@certification_letter), params: { certification_letter: { certifier_id: @certification_letter.certifier_id, comments: @certification_letter.comments, company_id: @certification_letter.company_id, conditions: @certification_letter.conditions, content_type: @certification_letter.content_type, created_by_id: @certification_letter.created_by_id, data_source: @certification_letter.data_source, deleted_at: @certification_letter.deleted_at, expires_at: @certification_letter.expires_at, file_digest: @certification_letter.file_digest, file_name: @certification_letter.file_name, file_uploaded: @certification_letter.file_uploaded, is_batch: @certification_letter.is_batch, is_passover: @certification_letter.is_passover, issued_at: @certification_letter.issued_at, kosher_group: @certification_letter.kosher_group, passover_symbol: @certification_letter.passover_symbol, producer_id: @certification_letter.producer_id, symbol: @certification_letter.symbol, updated_by_id: @certification_letter.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy certification_letter" do
    assert_difference('CertificationLetter.count', -1) do
      delete certification_letter_url(@certification_letter), as: :json
    end

    assert_response 204
  end
end
