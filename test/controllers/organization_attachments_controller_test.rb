require "test_helper"

class OrganizationAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_attachment = organization_attachments(:one)
  end

  test "should get index" do
    get organization_attachments_url, as: :json
    assert_response :success
  end

  test "should create organization_attachment" do
    assert_difference('OrganizationAttachment.count') do
      post organization_attachments_url, params: { organization_attachment: { attachment_id: @organization_attachment.attachment_id, deleted_at: @organization_attachment.deleted_at, organization_id: @organization_attachment.organization_id } }, as: :json
    end

    assert_response 201
  end

  test "should show organization_attachment" do
    get organization_attachment_url(@organization_attachment), as: :json
    assert_response :success
  end

  test "should update organization_attachment" do
    patch organization_attachment_url(@organization_attachment), params: { organization_attachment: { attachment_id: @organization_attachment.attachment_id, deleted_at: @organization_attachment.deleted_at, organization_id: @organization_attachment.organization_id } }, as: :json
    assert_response 200
  end

  test "should destroy organization_attachment" do
    assert_difference('OrganizationAttachment.count', -1) do
      delete organization_attachment_url(@organization_attachment), as: :json
    end

    assert_response 204
  end
end
