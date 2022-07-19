require "test_helper"

class IngredientAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_attachment = ingredient_attachments(:one)
  end

  test "should get index" do
    get ingredient_attachments_url, as: :json
    assert_response :success
  end

  test "should create ingredient_attachment" do
    assert_difference('IngredientAttachment.count') do
      post ingredient_attachments_url, params: { ingredient_attachment: { attachment_id: @ingredient_attachment.attachment_id, deleted_at: @ingredient_attachment.deleted_at, ingredient_id: @ingredient_attachment.ingredient_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ingredient_attachment" do
    get ingredient_attachment_url(@ingredient_attachment), as: :json
    assert_response :success
  end

  test "should update ingredient_attachment" do
    patch ingredient_attachment_url(@ingredient_attachment), params: { ingredient_attachment: { attachment_id: @ingredient_attachment.attachment_id, deleted_at: @ingredient_attachment.deleted_at, ingredient_id: @ingredient_attachment.ingredient_id } }, as: :json
    assert_response 200
  end

  test "should destroy ingredient_attachment" do
    assert_difference('IngredientAttachment.count', -1) do
      delete ingredient_attachment_url(@ingredient_attachment), as: :json
    end

    assert_response 204
  end
end
