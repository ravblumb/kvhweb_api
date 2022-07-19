require "test_helper"

class BatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get batches_url, as: :json
    assert_response :success
  end

  test "should create batch" do
    assert_difference('Batch.count') do
      post batches_url, params: { batch: { applied_at: @batch.applied_at, approved_at: @batch.approved_at, code: @batch.code, comments: @batch.comments, conditions: @batch.conditions, created_by_id: @batch.created_by_id, date: @batch.date, deleted_at: @batch.deleted_at, previous_state: @batch.previous_state, previous_state_changed_by_id: @batch.previous_state_changed_by_id, previous_state_time: @batch.previous_state_time, product_id: @batch.product_id, state: @batch.state, state_changed_by_id: @batch.state_changed_by_id, state_time: @batch.state_time, updated_by_id: @batch.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show batch" do
    get batch_url(@batch), as: :json
    assert_response :success
  end

  test "should update batch" do
    patch batch_url(@batch), params: { batch: { applied_at: @batch.applied_at, approved_at: @batch.approved_at, code: @batch.code, comments: @batch.comments, conditions: @batch.conditions, created_by_id: @batch.created_by_id, date: @batch.date, deleted_at: @batch.deleted_at, previous_state: @batch.previous_state, previous_state_changed_by_id: @batch.previous_state_changed_by_id, previous_state_time: @batch.previous_state_time, product_id: @batch.product_id, state: @batch.state, state_changed_by_id: @batch.state_changed_by_id, state_time: @batch.state_time, updated_by_id: @batch.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy batch" do
    assert_difference('Batch.count', -1) do
      delete batch_url(@batch), as: :json
    end

    assert_response 204
  end
end
