require "test_helper"

class InspectionAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspection_attachment = inspection_attachments(:one)
  end

  test "should get index" do
    get inspection_attachments_url, as: :json
    assert_response :success
  end

  test "should create inspection_attachment" do
    assert_difference('InspectionAttachment.count') do
      post inspection_attachments_url, params: { inspection_attachment: { attachment_id: @inspection_attachment.attachment_id, deleted_at: @inspection_attachment.deleted_at, inspection_id: @inspection_attachment.inspection_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inspection_attachment" do
    get inspection_attachment_url(@inspection_attachment), as: :json
    assert_response :success
  end

  test "should update inspection_attachment" do
    patch inspection_attachment_url(@inspection_attachment), params: { inspection_attachment: { attachment_id: @inspection_attachment.attachment_id, deleted_at: @inspection_attachment.deleted_at, inspection_id: @inspection_attachment.inspection_id } }, as: :json
    assert_response 200
  end

  test "should destroy inspection_attachment" do
    assert_difference('InspectionAttachment.count', -1) do
      delete inspection_attachment_url(@inspection_attachment), as: :json
    end

    assert_response 204
  end
end
