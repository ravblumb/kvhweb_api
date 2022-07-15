require "test_helper"

class AddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get addresses_url, as: :json
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post addresses_url, params: { address: { city: @address.city, country: @address.country, created_at: @address.created_at, created_by_id: @address.created_by_id, datetime: @address.datetime, deleted_at: @address.deleted_at, directions: @address.directions, google_friendly: @address.google_friendly, integer: @address.integer, latitude: @address.latitude, longitude: @address.longitude, postal_code: @address.postal_code, state_province: @address.state_province, street: @address.street, string: @address.string, string{1000}: @address.string{1000}, string{2000}: @address.string{2000}, string{20}: @address.string{20}, string{80}: @address.string{80}, updated_at: @address.updated_at, updated_by_id: @address.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show address" do
    get address_url(@address), as: :json
    assert_response :success
  end

  test "should update address" do
    patch address_url(@address), params: { address: { city: @address.city, country: @address.country, created_at: @address.created_at, created_by_id: @address.created_by_id, datetime: @address.datetime, deleted_at: @address.deleted_at, directions: @address.directions, google_friendly: @address.google_friendly, integer: @address.integer, latitude: @address.latitude, longitude: @address.longitude, postal_code: @address.postal_code, state_province: @address.state_province, street: @address.street, string: @address.string, string{1000}: @address.string{1000}, string{2000}: @address.string{2000}, string{20}: @address.string{20}, string{80}: @address.string{80}, updated_at: @address.updated_at, updated_by_id: @address.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete address_url(@address), as: :json
    end

    assert_response 204
  end
end
