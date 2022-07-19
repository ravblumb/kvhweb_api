require "test_helper"

class CopackRelationshipAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copack_relationship_attachment = copack_relationship_attachments(:one)
  end

  test "should get index" do
    get copack_relationship_attachments_url, as: :json
    assert_response :success
  end

  test "should create copack_relationship_attachment" do
    assert_difference('CopackRelationshipAttachment.count') do
      post copack_relationship_attachments_url, params: { copack_relationship_attachment: { attachment_id: @copack_relationship_attachment.attachment_id, copack_relationship_id: @copack_relationship_attachment.copack_relationship_id, deleted_at: @copack_relationship_attachment.deleted_at } }, as: :json
    end

    assert_response 201
  end

  test "should show copack_relationship_attachment" do
    get copack_relationship_attachment_url(@copack_relationship_attachment), as: :json
    assert_response :success
  end

  test "should update copack_relationship_attachment" do
    patch copack_relationship_attachment_url(@copack_relationship_attachment), params: { copack_relationship_attachment: { attachment_id: @copack_relationship_attachment.attachment_id, copack_relationship_id: @copack_relationship_attachment.copack_relationship_id, deleted_at: @copack_relationship_attachment.deleted_at } }, as: :json
    assert_response 200
  end

  test "should destroy copack_relationship_attachment" do
    assert_difference('CopackRelationshipAttachment.count', -1) do
      delete copack_relationship_attachment_url(@copack_relationship_attachment), as: :json
    end

    assert_response 204
  end
end
