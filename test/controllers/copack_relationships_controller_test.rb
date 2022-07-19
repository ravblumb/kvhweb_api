require "test_helper"

class CopackRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copack_relationship = copack_relationships(:one)
  end

  test "should get index" do
    get copack_relationships_url, as: :json
    assert_response :success
  end

  test "should create copack_relationship" do
    assert_difference('CopackRelationship.count') do
      post copack_relationships_url, params: { copack_relationship: { client_signature_json: @copack_relationship.client_signature_json, client_signature_name: @copack_relationship.client_signature_name, client_signed_at: @copack_relationship.client_signed_at, comments: @copack_relationship.comments, copack_client_id: @copack_relationship.copack_client_id, copack_manufacturer_id: @copack_relationship.copack_manufacturer_id, created_by_id: @copack_relationship.created_by_id, deleted_at: @copack_relationship.deleted_at, manufacturer_signature_json: @copack_relationship.manufacturer_signature_json, manufacturer_signature_name: @copack_relationship.manufacturer_signature_name, manufacturer_signed_at: @copack_relationship.manufacturer_signed_at, rc_approved_at: @copack_relationship.rc_approved_at, rc_approved_by_id: @copack_relationship.rc_approved_by_id, updated_by_id: @copack_relationship.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show copack_relationship" do
    get copack_relationship_url(@copack_relationship), as: :json
    assert_response :success
  end

  test "should update copack_relationship" do
    patch copack_relationship_url(@copack_relationship), params: { copack_relationship: { client_signature_json: @copack_relationship.client_signature_json, client_signature_name: @copack_relationship.client_signature_name, client_signed_at: @copack_relationship.client_signed_at, comments: @copack_relationship.comments, copack_client_id: @copack_relationship.copack_client_id, copack_manufacturer_id: @copack_relationship.copack_manufacturer_id, created_by_id: @copack_relationship.created_by_id, deleted_at: @copack_relationship.deleted_at, manufacturer_signature_json: @copack_relationship.manufacturer_signature_json, manufacturer_signature_name: @copack_relationship.manufacturer_signature_name, manufacturer_signed_at: @copack_relationship.manufacturer_signed_at, rc_approved_at: @copack_relationship.rc_approved_at, rc_approved_by_id: @copack_relationship.rc_approved_by_id, updated_by_id: @copack_relationship.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy copack_relationship" do
    assert_difference('CopackRelationship.count', -1) do
      delete copack_relationship_url(@copack_relationship), as: :json
    end

    assert_response 204
  end
end
