require "test_helper"

class UkdImportRetriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ukd_import_retry = ukd_import_retries(:one)
  end

  test "should get index" do
    get ukd_import_retries_url, as: :json
    assert_response :success
  end

  test "should create ukd_import_retry" do
    assert_difference('UkdImportRetry.count') do
      post ukd_import_retries_url, params: { ukd_import_retry: { agency_name: @ukd_import_retry.agency_name, file_name: @ukd_import_retry.file_name, import_type: @ukd_import_retry.import_type, retries_left: @ukd_import_retry.retries_left } }, as: :json
    end

    assert_response 201
  end

  test "should show ukd_import_retry" do
    get ukd_import_retry_url(@ukd_import_retry), as: :json
    assert_response :success
  end

  test "should update ukd_import_retry" do
    patch ukd_import_retry_url(@ukd_import_retry), params: { ukd_import_retry: { agency_name: @ukd_import_retry.agency_name, file_name: @ukd_import_retry.file_name, import_type: @ukd_import_retry.import_type, retries_left: @ukd_import_retry.retries_left } }, as: :json
    assert_response 200
  end

  test "should destroy ukd_import_retry" do
    assert_difference('UkdImportRetry.count', -1) do
      delete ukd_import_retry_url(@ukd_import_retry), as: :json
    end

    assert_response 204
  end
end
