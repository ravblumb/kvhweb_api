require "test_helper"

class IssueAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue_attachment = issue_attachments(:one)
  end

  test "should get index" do
    get issue_attachments_url, as: :json
    assert_response :success
  end

  test "should create issue_attachment" do
    assert_difference('IssueAttachment.count') do
      post issue_attachments_url, params: { issue_attachment: { attachment_id: @issue_attachment.attachment_id, deleted_at: @issue_attachment.deleted_at, issue_id: @issue_attachment.issue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show issue_attachment" do
    get issue_attachment_url(@issue_attachment), as: :json
    assert_response :success
  end

  test "should update issue_attachment" do
    patch issue_attachment_url(@issue_attachment), params: { issue_attachment: { attachment_id: @issue_attachment.attachment_id, deleted_at: @issue_attachment.deleted_at, issue_id: @issue_attachment.issue_id } }, as: :json
    assert_response 200
  end

  test "should destroy issue_attachment" do
    assert_difference('IssueAttachment.count', -1) do
      delete issue_attachment_url(@issue_attachment), as: :json
    end

    assert_response 204
  end
end
