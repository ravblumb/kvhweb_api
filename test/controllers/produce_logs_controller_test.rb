require "test_helper"

class ProduceLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produce_log = produce_logs(:one)
  end

  test "should get index" do
    get produce_logs_url, as: :json
    assert_response :success
  end

  test "should create produce_log" do
    assert_difference('ProduceLog.count') do
      post produce_logs_url, params: { produce_log: { bugs_found: @produce_log.bugs_found, comments: @produce_log.comments, created_by_id: @produce_log.created_by_id, date: @produce_log.date, deleted_at: @produce_log.deleted_at, infestation_level: @produce_log.infestation_level, inspection_id: @produce_log.inspection_id, organization_id: @produce_log.organization_id, pass: @produce_log.pass, produce_id: @produce_log.produce_id, quantity: @produce_log.quantity, time: @produce_log.time, updated_by_id: @produce_log.updated_by_id, washes: @produce_log.washes } }, as: :json
    end

    assert_response 201
  end

  test "should show produce_log" do
    get produce_log_url(@produce_log), as: :json
    assert_response :success
  end

  test "should update produce_log" do
    patch produce_log_url(@produce_log), params: { produce_log: { bugs_found: @produce_log.bugs_found, comments: @produce_log.comments, created_by_id: @produce_log.created_by_id, date: @produce_log.date, deleted_at: @produce_log.deleted_at, infestation_level: @produce_log.infestation_level, inspection_id: @produce_log.inspection_id, organization_id: @produce_log.organization_id, pass: @produce_log.pass, produce_id: @produce_log.produce_id, quantity: @produce_log.quantity, time: @produce_log.time, updated_by_id: @produce_log.updated_by_id, washes: @produce_log.washes } }, as: :json
    assert_response 200
  end

  test "should destroy produce_log" do
    assert_difference('ProduceLog.count', -1) do
      delete produce_log_url(@produce_log), as: :json
    end

    assert_response 204
  end
end
