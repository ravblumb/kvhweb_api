require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url, as: :json
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { address_id: @contact.address_id, comments: @contact.comments, created_by_id: @contact.created_by_id, data_source: @contact.data_source, deleted_at: @contact.deleted_at, email_contact: @contact.email_contact, email_notification: @contact.email_notification, entered_by_company_id: @contact.entered_by_company_id, first_name: @contact.first_name, inspector_type: @contact.inspector_type, is_inactive: @contact.is_inactive, is_invoicing: @contact.is_invoicing, last_name: @contact.last_name, legacy_id: @contact.legacy_id, location_area: @contact.location_area, map_marker_colour: @contact.map_marker_colour, organization_id: @contact.organization_id, out_of_the_office_until: @contact.out_of_the_office_until, pay_rate: @contact.pay_rate, payroll_code: @contact.payroll_code, position: @contact.position, salutation: @contact.salutation, telcom_id: @contact.telcom_id, type: @contact.type, updated_by_id: @contact.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show contact" do
    get contact_url(@contact), as: :json
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { address_id: @contact.address_id, comments: @contact.comments, created_by_id: @contact.created_by_id, data_source: @contact.data_source, deleted_at: @contact.deleted_at, email_contact: @contact.email_contact, email_notification: @contact.email_notification, entered_by_company_id: @contact.entered_by_company_id, first_name: @contact.first_name, inspector_type: @contact.inspector_type, is_inactive: @contact.is_inactive, is_invoicing: @contact.is_invoicing, last_name: @contact.last_name, legacy_id: @contact.legacy_id, location_area: @contact.location_area, map_marker_colour: @contact.map_marker_colour, organization_id: @contact.organization_id, out_of_the_office_until: @contact.out_of_the_office_until, pay_rate: @contact.pay_rate, payroll_code: @contact.payroll_code, position: @contact.position, salutation: @contact.salutation, telcom_id: @contact.telcom_id, type: @contact.type, updated_by_id: @contact.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact), as: :json
    end

    assert_response 204
  end
end
