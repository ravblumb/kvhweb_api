require "test_helper"

class InspectedEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspected_event = inspected_events(:one)
  end

  test "should get index" do
    get inspected_events_url, as: :json
    assert_response :success
  end

  test "should create inspected_event" do
    assert_difference('InspectedEvent.count') do
      post inspected_events_url, params: { inspected_event: { alt_venue_address_id: @inspected_event.alt_venue_address_id, alt_venue_name: @inspected_event.alt_venue_name, billed_at: @inspected_event.billed_at, billed_by_id: @inspected_event.billed_by_id, comments: @inspected_event.comments, created_by_id: @inspected_event.created_by_id, deleted_at: @inspected_event.deleted_at, dishwashing_end_time: @inspected_event.dishwashing_end_time, event_date: @inspected_event.event_date, event_status: @inspected_event.event_status, event_time: @inspected_event.event_time, event_title: @inspected_event.event_title, is_candy: @inspected_event.is_candy, is_cappuccino: @inspected_event.is_cappuccino, is_confidential: @inspected_event.is_confidential, is_cotton_candy: @inspected_event.is_cotton_candy, is_hotdogs: @inspected_event.is_hotdogs, is_kashering_required: @inspected_event.is_kashering_required, is_kitchen_on_different_floor: @inspected_event.is_kitchen_on_different_floor, is_liquor: @inspected_event.is_liquor, is_non_kosher_kitchen: @inspected_event.is_non_kosher_kitchen, is_other_3rd_party_equipment: @inspected_event.is_other_3rd_party_equipment, is_other_supplies: @inspected_event.is_other_supplies, is_party_planner: @inspected_event.is_party_planner, is_popcorn: @inspected_event.is_popcorn, is_renting: @inspected_event.is_renting, is_staff_meal: @inspected_event.is_staff_meal, is_sushi: @inspected_event.is_sushi, is_wine: @inspected_event.is_wine, kashering_required: @inspected_event.kashering_required, kitchen_close_time: @inspected_event.kitchen_close_time, kitchen_open_time: @inspected_event.kitchen_open_time, kosher_location: @inspected_event.kosher_location, legacy_id: @inspected_event.legacy_id, mashgiach_preference: @inspected_event.mashgiach_preference, mashgiach_request_time: @inspected_event.mashgiach_request_time, non_kosher_location: @inspected_event.non_kosher_location, notebook_id: @inspected_event.notebook_id, organization_id: @inspected_event.organization_id, other_3rd_party_equipment: @inspected_event.other_3rd_party_equipment, other_supplies: @inspected_event.other_supplies, people_count: @inspected_event.people_count, received_at: @inspected_event.received_at, rental_equipment: @inspected_event.rental_equipment, rental_supplier: @inspected_event.rental_supplier, replaced_inspector_id: @inspected_event.replaced_inspector_id, requires_administrator_attention: @inspected_event.requires_administrator_attention, reviewed_at: @inspected_event.reviewed_at, setup_time: @inspected_event.setup_time, signed_at: @inspected_event.signed_at, type: @inspected_event.type, updated_by_id: @inspected_event.updated_by_id, venue_id: @inspected_event.venue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inspected_event" do
    get inspected_event_url(@inspected_event), as: :json
    assert_response :success
  end

  test "should update inspected_event" do
    patch inspected_event_url(@inspected_event), params: { inspected_event: { alt_venue_address_id: @inspected_event.alt_venue_address_id, alt_venue_name: @inspected_event.alt_venue_name, billed_at: @inspected_event.billed_at, billed_by_id: @inspected_event.billed_by_id, comments: @inspected_event.comments, created_by_id: @inspected_event.created_by_id, deleted_at: @inspected_event.deleted_at, dishwashing_end_time: @inspected_event.dishwashing_end_time, event_date: @inspected_event.event_date, event_status: @inspected_event.event_status, event_time: @inspected_event.event_time, event_title: @inspected_event.event_title, is_candy: @inspected_event.is_candy, is_cappuccino: @inspected_event.is_cappuccino, is_confidential: @inspected_event.is_confidential, is_cotton_candy: @inspected_event.is_cotton_candy, is_hotdogs: @inspected_event.is_hotdogs, is_kashering_required: @inspected_event.is_kashering_required, is_kitchen_on_different_floor: @inspected_event.is_kitchen_on_different_floor, is_liquor: @inspected_event.is_liquor, is_non_kosher_kitchen: @inspected_event.is_non_kosher_kitchen, is_other_3rd_party_equipment: @inspected_event.is_other_3rd_party_equipment, is_other_supplies: @inspected_event.is_other_supplies, is_party_planner: @inspected_event.is_party_planner, is_popcorn: @inspected_event.is_popcorn, is_renting: @inspected_event.is_renting, is_staff_meal: @inspected_event.is_staff_meal, is_sushi: @inspected_event.is_sushi, is_wine: @inspected_event.is_wine, kashering_required: @inspected_event.kashering_required, kitchen_close_time: @inspected_event.kitchen_close_time, kitchen_open_time: @inspected_event.kitchen_open_time, kosher_location: @inspected_event.kosher_location, legacy_id: @inspected_event.legacy_id, mashgiach_preference: @inspected_event.mashgiach_preference, mashgiach_request_time: @inspected_event.mashgiach_request_time, non_kosher_location: @inspected_event.non_kosher_location, notebook_id: @inspected_event.notebook_id, organization_id: @inspected_event.organization_id, other_3rd_party_equipment: @inspected_event.other_3rd_party_equipment, other_supplies: @inspected_event.other_supplies, people_count: @inspected_event.people_count, received_at: @inspected_event.received_at, rental_equipment: @inspected_event.rental_equipment, rental_supplier: @inspected_event.rental_supplier, replaced_inspector_id: @inspected_event.replaced_inspector_id, requires_administrator_attention: @inspected_event.requires_administrator_attention, reviewed_at: @inspected_event.reviewed_at, setup_time: @inspected_event.setup_time, signed_at: @inspected_event.signed_at, type: @inspected_event.type, updated_by_id: @inspected_event.updated_by_id, venue_id: @inspected_event.venue_id } }, as: :json
    assert_response 200
  end

  test "should destroy inspected_event" do
    assert_difference('InspectedEvent.count', -1) do
      delete inspected_event_url(@inspected_event), as: :json
    end

    assert_response 204
  end
end
