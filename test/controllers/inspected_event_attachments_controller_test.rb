require "test_helper"

class InspectedEventAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspected_event_attachment = inspected_event_attachments(:one)
  end

  test "should get index" do
    get inspected_event_attachments_url, as: :json
    assert_response :success
  end

  test "should create inspected_event_attachment" do
    assert_difference('InspectedEventAttachment.count') do
      post inspected_event_attachments_url, params: { inspected_event_attachment: { attachment_id: @inspected_event_attachment.attachment_id, deleted_at: @inspected_event_attachment.deleted_at, inspected_event_id: @inspected_event_attachment.inspected_event_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inspected_event_attachment" do
    get inspected_event_attachment_url(@inspected_event_attachment), as: :json
    assert_response :success
  end

  test "should update inspected_event_attachment" do
    patch inspected_event_attachment_url(@inspected_event_attachment), params: { inspected_event_attachment: { attachment_id: @inspected_event_attachment.attachment_id, deleted_at: @inspected_event_attachment.deleted_at, inspected_event_id: @inspected_event_attachment.inspected_event_id } }, as: :json
    assert_response 200
  end

  test "should destroy inspected_event_attachment" do
    assert_difference('InspectedEventAttachment.count', -1) do
      delete inspected_event_attachment_url(@inspected_event_attachment), as: :json
    end

    assert_response 204
  end
end
