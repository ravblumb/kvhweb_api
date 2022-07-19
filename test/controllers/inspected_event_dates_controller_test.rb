require "test_helper"

class InspectedEventDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspected_event_date = inspected_event_dates(:one)
  end

  test "should get index" do
    get inspected_event_dates_url, as: :json
    assert_response :success
  end

  test "should create inspected_event_date" do
    assert_difference('InspectedEventDate.count') do
      post inspected_event_dates_url, params: { inspected_event_date: { comments: @inspected_event_date.comments, created_by_id: @inspected_event_date.created_by_id, date: @inspected_event_date.date, deleted_at: @inspected_event_date.deleted_at, end_time: @inspected_event_date.end_time, event_status: @inspected_event_date.event_status, event_type: @inspected_event_date.event_type, inspected_event_id: @inspected_event_date.inspected_event_id, inspector_count: @inspected_event_date.inspector_count, legacy_id: @inspected_event_date.legacy_id, organization_id: @inspected_event_date.organization_id, start_time: @inspected_event_date.start_time, updated_by_id: @inspected_event_date.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inspected_event_date" do
    get inspected_event_date_url(@inspected_event_date), as: :json
    assert_response :success
  end

  test "should update inspected_event_date" do
    patch inspected_event_date_url(@inspected_event_date), params: { inspected_event_date: { comments: @inspected_event_date.comments, created_by_id: @inspected_event_date.created_by_id, date: @inspected_event_date.date, deleted_at: @inspected_event_date.deleted_at, end_time: @inspected_event_date.end_time, event_status: @inspected_event_date.event_status, event_type: @inspected_event_date.event_type, inspected_event_id: @inspected_event_date.inspected_event_id, inspector_count: @inspected_event_date.inspector_count, legacy_id: @inspected_event_date.legacy_id, organization_id: @inspected_event_date.organization_id, start_time: @inspected_event_date.start_time, updated_by_id: @inspected_event_date.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy inspected_event_date" do
    assert_difference('InspectedEventDate.count', -1) do
      delete inspected_event_date_url(@inspected_event_date), as: :json
    end

    assert_response 204
  end
end
