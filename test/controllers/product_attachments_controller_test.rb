require "test_helper"

class ProductAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_attachment = product_attachments(:one)
  end

  test "should get index" do
    get product_attachments_url, as: :json
    assert_response :success
  end

  test "should create product_attachment" do
    assert_difference('ProductAttachment.count') do
      post product_attachments_url, params: { product_attachment: { attachment_id: @product_attachment.attachment_id, deleted_at: @product_attachment.deleted_at, product_id: @product_attachment.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_attachment" do
    get product_attachment_url(@product_attachment), as: :json
    assert_response :success
  end

  test "should update product_attachment" do
    patch product_attachment_url(@product_attachment), params: { product_attachment: { attachment_id: @product_attachment.attachment_id, deleted_at: @product_attachment.deleted_at, product_id: @product_attachment.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_attachment" do
    assert_difference('ProductAttachment.count', -1) do
      delete product_attachment_url(@product_attachment), as: :json
    end

    assert_response 204
  end
end
