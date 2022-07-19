require "test_helper"

class BatchAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batch_attachment = batch_attachments(:one)
  end

  test "should get index" do
    get batch_attachments_url, as: :json
    assert_response :success
  end

  test "should create batch_attachment" do
    assert_difference('BatchAttachment.count') do
      post batch_attachments_url, params: { batch_attachment: { attachment_id: @batch_attachment.attachment_id, batch_id: @batch_attachment.batch_id, deleted_at: @batch_attachment.deleted_at } }, as: :json
    end

    assert_response 201
  end

  test "should show batch_attachment" do
    get batch_attachment_url(@batch_attachment), as: :json
    assert_response :success
  end

  test "should update batch_attachment" do
    patch batch_attachment_url(@batch_attachment), params: { batch_attachment: { attachment_id: @batch_attachment.attachment_id, batch_id: @batch_attachment.batch_id, deleted_at: @batch_attachment.deleted_at } }, as: :json
    assert_response 200
  end

  test "should destroy batch_attachment" do
    assert_difference('BatchAttachment.count', -1) do
      delete batch_attachment_url(@batch_attachment), as: :json
    end

    assert_response 204
  end
end
