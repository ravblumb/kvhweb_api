require "test_helper"

class ChallahFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challah_form = challah_forms(:one)
  end

  test "should get index" do
    get challah_forms_url, as: :json
    assert_response :success
  end

  test "should create challah_form" do
    assert_difference('ChallahForm.count') do
      post challah_forms_url, params: { challah_form: { baking_days_per_week: @challah_form.baking_days_per_week, created_by_id: @challah_form.created_by_id, date: @challah_form.date, deleted_at: @challah_form.deleted_at, inspection_id: @challah_form.inspection_id, matzo_purchased: @challah_form.matzo_purchased, matzo_used: @challah_form.matzo_used, mixes_per_day: @challah_form.mixes_per_day, mixes_per_week: @challah_form.mixes_per_week, organization_id: @challah_form.organization_id, placed_by_id: @challah_form.placed_by_id, tevel_type: @challah_form.tevel_type, tevel_weight: @challah_form.tevel_weight, updated_by_id: @challah_form.updated_by_id, weight_per_box: @challah_form.weight_per_box } }, as: :json
    end

    assert_response 201
  end

  test "should show challah_form" do
    get challah_form_url(@challah_form), as: :json
    assert_response :success
  end

  test "should update challah_form" do
    patch challah_form_url(@challah_form), params: { challah_form: { baking_days_per_week: @challah_form.baking_days_per_week, created_by_id: @challah_form.created_by_id, date: @challah_form.date, deleted_at: @challah_form.deleted_at, inspection_id: @challah_form.inspection_id, matzo_purchased: @challah_form.matzo_purchased, matzo_used: @challah_form.matzo_used, mixes_per_day: @challah_form.mixes_per_day, mixes_per_week: @challah_form.mixes_per_week, organization_id: @challah_form.organization_id, placed_by_id: @challah_form.placed_by_id, tevel_type: @challah_form.tevel_type, tevel_weight: @challah_form.tevel_weight, updated_by_id: @challah_form.updated_by_id, weight_per_box: @challah_form.weight_per_box } }, as: :json
    assert_response 200
  end

  test "should destroy challah_form" do
    assert_difference('ChallahForm.count', -1) do
      delete challah_form_url(@challah_form), as: :json
    end

    assert_response 204
  end
end
