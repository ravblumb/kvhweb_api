require "test_helper"

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url, as: :json
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { amount: @payment.amount, created_by_id: @payment.created_by_id, deleted_at: @payment.deleted_at, name: @payment.name, organization_id: @payment.organization_id, paid_at: @payment.paid_at, paid_by_id: @payment.paid_by_id, paid_ip_address: @payment.paid_ip_address, paid_response: @payment.paid_response, paypal_payer_id: @payment.paypal_payer_id, paypal_response: @payment.paypal_response, paypal_token: @payment.paypal_token, updated_by_id: @payment.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show payment" do
    get payment_url(@payment), as: :json
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { amount: @payment.amount, created_by_id: @payment.created_by_id, deleted_at: @payment.deleted_at, name: @payment.name, organization_id: @payment.organization_id, paid_at: @payment.paid_at, paid_by_id: @payment.paid_by_id, paid_ip_address: @payment.paid_ip_address, paid_response: @payment.paid_response, paypal_payer_id: @payment.paypal_payer_id, paypal_response: @payment.paypal_response, paypal_token: @payment.paypal_token, updated_by_id: @payment.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment), as: :json
    end

    assert_response 204
  end
end
