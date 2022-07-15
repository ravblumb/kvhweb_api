require "test_helper"

class AdditionalInspectorAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additional_inspector_assignment = additional_inspector_assignments(:one)
  end

  test "should get index" do
    get additional_inspector_assignments_url, as: :json
    assert_response :success
  end

  test "should create additional_inspector_assignment" do
    assert_difference('AdditionalInspectorAssignment.count') do
      post additional_inspector_assignments_url, params: { additional_inspector_assignment: { created_at: @additional_inspector_assignment.created_at, created_by_id: @additional_inspector_assignment.created_by_id, datetime: @additional_inspector_assignment.datetime, deleted_at: @additional_inspector_assignment.deleted_at, inspector_id: @additional_inspector_assignment.inspector_id, integer: @additional_inspector_assignment.integer, organization_id: @additional_inspector_assignment.organization_id, updated_at: @additional_inspector_assignment.updated_at, updated_by_id: @additional_inspector_assignment.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show additional_inspector_assignment" do
    get additional_inspector_assignment_url(@additional_inspector_assignment), as: :json
    assert_response :success
  end

  test "should update additional_inspector_assignment" do
    patch additional_inspector_assignment_url(@additional_inspector_assignment), params: { additional_inspector_assignment: { created_at: @additional_inspector_assignment.created_at, created_by_id: @additional_inspector_assignment.created_by_id, datetime: @additional_inspector_assignment.datetime, deleted_at: @additional_inspector_assignment.deleted_at, inspector_id: @additional_inspector_assignment.inspector_id, integer: @additional_inspector_assignment.integer, organization_id: @additional_inspector_assignment.organization_id, updated_at: @additional_inspector_assignment.updated_at, updated_by_id: @additional_inspector_assignment.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy additional_inspector_assignment" do
    assert_difference('AdditionalInspectorAssignment.count', -1) do
      delete additional_inspector_assignment_url(@additional_inspector_assignment), as: :json
    end

    assert_response 204
  end
end
