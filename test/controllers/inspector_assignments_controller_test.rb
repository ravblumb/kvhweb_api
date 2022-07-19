require "test_helper"

class InspectorAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspector_assignment = inspector_assignments(:one)
  end

  test "should get index" do
    get inspector_assignments_url, as: :json
    assert_response :success
  end

  test "should create inspector_assignment" do
    assert_difference('InspectorAssignment.count') do
      post inspector_assignments_url, params: { inspector_assignment: { inspector_id: @inspector_assignment.inspector_id, organization_id: @inspector_assignment.organization_id, replaced_at: @inspector_assignment.replaced_at, role: @inspector_assignment.role } }, as: :json
    end

    assert_response 201
  end

  test "should show inspector_assignment" do
    get inspector_assignment_url(@inspector_assignment), as: :json
    assert_response :success
  end

  test "should update inspector_assignment" do
    patch inspector_assignment_url(@inspector_assignment), params: { inspector_assignment: { inspector_id: @inspector_assignment.inspector_id, organization_id: @inspector_assignment.organization_id, replaced_at: @inspector_assignment.replaced_at, role: @inspector_assignment.role } }, as: :json
    assert_response 200
  end

  test "should destroy inspector_assignment" do
    assert_difference('InspectorAssignment.count', -1) do
      delete inspector_assignment_url(@inspector_assignment), as: :json
    end

    assert_response 204
  end
end
