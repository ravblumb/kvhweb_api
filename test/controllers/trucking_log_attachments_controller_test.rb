require "test_helper"

class TruckingLogAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trucking_log_attachment = trucking_log_attachments(:one)
  end

  test "should get index" do
    get trucking_log_attachments_url, as: :json
    assert_response :success
  end

  test "should create trucking_log_attachment" do
    assert_difference('TruckingLogAttachment.count') do
      post trucking_log_attachments_url, params: { trucking_log_attachment: { attachment_id: @trucking_log_attachment.attachment_id, deleted_at: @trucking_log_attachment.deleted_at, start_date: @trucking_log_attachment.start_date, trucking_log_id: @trucking_log_attachment.trucking_log_id } }, as: :json
    end

    assert_response 201
  end

  test "should show trucking_log_attachment" do
    get trucking_log_attachment_url(@trucking_log_attachment), as: :json
    assert_response :success
  end

  test "should update trucking_log_attachment" do
    patch trucking_log_attachment_url(@trucking_log_attachment), params: { trucking_log_attachment: { attachment_id: @trucking_log_attachment.attachment_id, deleted_at: @trucking_log_attachment.deleted_at, start_date: @trucking_log_attachment.start_date, trucking_log_id: @trucking_log_attachment.trucking_log_id } }, as: :json
    assert_response 200
  end

  test "should destroy trucking_log_attachment" do
    assert_difference('TruckingLogAttachment.count', -1) do
      delete trucking_log_attachment_url(@trucking_log_attachment), as: :json
    end

    assert_response 204
  end
end
