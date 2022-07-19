require "test_helper"

class ContactAffiliationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_affiliation = contact_affiliations(:one)
  end

  test "should get index" do
    get contact_affiliations_url, as: :json
    assert_response :success
  end

  test "should create contact_affiliation" do
    assert_difference('ContactAffiliation.count') do
      post contact_affiliations_url, params: { contact_affiliation: { contact_id: @contact_affiliation.contact_id, created_by_id: @contact_affiliation.created_by_id, deleted_at: @contact_affiliation.deleted_at, organization_id: @contact_affiliation.organization_id, updated_by_id: @contact_affiliation.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show contact_affiliation" do
    get contact_affiliation_url(@contact_affiliation), as: :json
    assert_response :success
  end

  test "should update contact_affiliation" do
    patch contact_affiliation_url(@contact_affiliation), params: { contact_affiliation: { contact_id: @contact_affiliation.contact_id, created_by_id: @contact_affiliation.created_by_id, deleted_at: @contact_affiliation.deleted_at, organization_id: @contact_affiliation.organization_id, updated_by_id: @contact_affiliation.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy contact_affiliation" do
    assert_difference('ContactAffiliation.count', -1) do
      delete contact_affiliation_url(@contact_affiliation), as: :json
    end

    assert_response 204
  end
end
