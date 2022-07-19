require "test_helper"

class TruckingLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trucking_log = trucking_logs(:one)
  end

  test "should get index" do
    get trucking_logs_url, as: :json
    assert_response :success
  end

  test "should create trucking_log" do
    assert_difference('TruckingLog.count') do
      post trucking_logs_url, params: { trucking_log: { comments: @trucking_log.comments, created_by_id: @trucking_log.created_by_id, deleted_at: @trucking_log.deleted_at, end_date: @trucking_log.end_date, organization_id: @trucking_log.organization_id, start_date: @trucking_log.start_date, updated_by_id: @trucking_log.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show trucking_log" do
    get trucking_log_url(@trucking_log), as: :json
    assert_response :success
  end

  test "should update trucking_log" do
    patch trucking_log_url(@trucking_log), params: { trucking_log: { comments: @trucking_log.comments, created_by_id: @trucking_log.created_by_id, deleted_at: @trucking_log.deleted_at, end_date: @trucking_log.end_date, organization_id: @trucking_log.organization_id, start_date: @trucking_log.start_date, updated_by_id: @trucking_log.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy trucking_log" do
    assert_difference('TruckingLog.count', -1) do
      delete trucking_log_url(@trucking_log), as: :json
    end

    assert_response 204
  end
end
