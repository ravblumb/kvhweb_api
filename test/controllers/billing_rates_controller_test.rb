require "test_helper"

class BillingRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_rate = billing_rates(:one)
  end

  test "should get index" do
    get billing_rates_url, as: :json
    assert_response :success
  end

  test "should create billing_rate" do
    assert_difference('BillingRate.count') do
      post billing_rates_url, params: { billing_rate: { base_fee: @billing_rate.base_fee, base_pay_rate: @billing_rate.base_pay_rate, code: @billing_rate.code, created_by_id: @billing_rate.created_by_id, first_five_hours_rate: @billing_rate.first_five_hours_rate, hour_pay_rate: @billing_rate.hour_pay_rate, hour_rate: @billing_rate.hour_rate, is_food_service: @billing_rate.is_food_service, is_industrial: @billing_rate.is_industrial, is_regular: @billing_rate.is_regular, min_hours: @billing_rate.min_hours, min_pay_hours: @billing_rate.min_pay_hours, name: @billing_rate.name, override_mashgiach_pay_rate: @billing_rate.override_mashgiach_pay_rate, payroll_code: @billing_rate.payroll_code, updated_by_id: @billing_rate.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show billing_rate" do
    get billing_rate_url(@billing_rate), as: :json
    assert_response :success
  end

  test "should update billing_rate" do
    patch billing_rate_url(@billing_rate), params: { billing_rate: { base_fee: @billing_rate.base_fee, base_pay_rate: @billing_rate.base_pay_rate, code: @billing_rate.code, created_by_id: @billing_rate.created_by_id, first_five_hours_rate: @billing_rate.first_five_hours_rate, hour_pay_rate: @billing_rate.hour_pay_rate, hour_rate: @billing_rate.hour_rate, is_food_service: @billing_rate.is_food_service, is_industrial: @billing_rate.is_industrial, is_regular: @billing_rate.is_regular, min_hours: @billing_rate.min_hours, min_pay_hours: @billing_rate.min_pay_hours, name: @billing_rate.name, override_mashgiach_pay_rate: @billing_rate.override_mashgiach_pay_rate, payroll_code: @billing_rate.payroll_code, updated_by_id: @billing_rate.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy billing_rate" do
    assert_difference('BillingRate.count', -1) do
      delete billing_rate_url(@billing_rate), as: :json
    end

    assert_response 204
  end
end
