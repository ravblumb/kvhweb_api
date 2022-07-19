require "test_helper"

class IssuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get issues_url, as: :json
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post issues_url, params: { issue: { comments: @issue.comments, created_by_id: @issue.created_by_id, detected_at: @issue.detected_at, detected_by_id: @issue.detected_by_id, ingredient_id: @issue.ingredient_id, inspection_id: @issue.inspection_id, notebook_id: @issue.notebook_id, organization_id: @issue.organization_id, product_id: @issue.product_id, resolution: @issue.resolution, resolved_at: @issue.resolved_at, resolved_by_id: @issue.resolved_by_id, severity: @issue.severity, snoozed_until: @issue.snoozed_until, subject: @issue.subject, updated_by_id: @issue.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show issue" do
    get issue_url(@issue), as: :json
    assert_response :success
  end

  test "should update issue" do
    patch issue_url(@issue), params: { issue: { comments: @issue.comments, created_by_id: @issue.created_by_id, detected_at: @issue.detected_at, detected_by_id: @issue.detected_by_id, ingredient_id: @issue.ingredient_id, inspection_id: @issue.inspection_id, notebook_id: @issue.notebook_id, organization_id: @issue.organization_id, product_id: @issue.product_id, resolution: @issue.resolution, resolved_at: @issue.resolved_at, resolved_by_id: @issue.resolved_by_id, severity: @issue.severity, snoozed_until: @issue.snoozed_until, subject: @issue.subject, updated_by_id: @issue.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete issue_url(@issue), as: :json
    end

    assert_response 204
  end
end
