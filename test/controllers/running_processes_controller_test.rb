require "test_helper"

class RunningProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @running_process = running_processes(:one)
  end

  test "should get index" do
    get running_processes_url, as: :json
    assert_response :success
  end

  test "should create running_process" do
    assert_difference('RunningProcess.count') do
      post running_processes_url, params: { running_process: { info: @running_process.info, pid: @running_process.pid, session_id: @running_process.session_id, start: @running_process.start, url: @running_process.url } }, as: :json
    end

    assert_response 201
  end

  test "should show running_process" do
    get running_process_url(@running_process), as: :json
    assert_response :success
  end

  test "should update running_process" do
    patch running_process_url(@running_process), params: { running_process: { info: @running_process.info, pid: @running_process.pid, session_id: @running_process.session_id, start: @running_process.start, url: @running_process.url } }, as: :json
    assert_response 200
  end

  test "should destroy running_process" do
    assert_difference('RunningProcess.count', -1) do
      delete running_process_url(@running_process), as: :json
    end

    assert_response 204
  end
end
