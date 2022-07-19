require "test_helper"

class InspectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspection = inspections(:one)
  end

  test "should get index" do
    get inspections_url, as: :json
    assert_response :success
  end

  test "should create inspection" do
    assert_difference('Inspection.count') do
      post inspections_url, params: { inspection: { accounting_approved_at: @inspection.accounting_approved_at, accounting_approved_by_id: @inspection.accounting_approved_by_id, additional_charges: @inspection.additional_charges, additional_profile_question_1_checked: @inspection.additional_profile_question_1_checked, additional_profile_question_2_checked: @inspection.additional_profile_question_2_checked, additional_profile_question_3_checked: @inspection.additional_profile_question_3_checked, additional_profile_question_4_checked: @inspection.additional_profile_question_4_checked, additional_profile_question_5_checked: @inspection.additional_profile_question_5_checked, admin_approved_at: @inspection.admin_approved_at, admin_approved_by_id: @inspection.admin_approved_by_id, automatic_koshering_checked: @inspection.automatic_koshering_checked, batch_sheets_checked: @inspection.batch_sheets_checked, bill_calculation: @inspection.bill_calculation, bill_formula: @inspection.bill_formula, bill_override: @inspection.bill_override, billed_at: @inspection.billed_at, billed_by_id: @inspection.billed_by_id, billing_rate_override: @inspection.billing_rate_override, bulk_ingredients_checked: @inspection.bulk_ingredients_checked, challa_procedures_checked: @inspection.challa_procedures_checked, changes_found: @inspection.changes_found, cleaning_in_place_checked: @inspection.cleaning_in_place_checked, comments: @inspection.comments, comments_original: @inspection.comments_original, contact_info_checked: @inspection.contact_info_checked, created_by_id: @inspection.created_by_id, dairy_pareve_segregation_checked: @inspection.dairy_pareve_segregation_checked, data_source: @inspection.data_source, date: @inspection.date, date_original: @inspection.date_original, deleted_at: @inspection.deleted_at, duration: @inspection.duration, duration_original: @inspection.duration_original, end_time: @inspection.end_time, expenses: @inspection.expenses, expenses_original: @inspection.expenses_original, expenses_paid_by_agency: @inspection.expenses_paid_by_agency, expenses_paid_by_agency_original: @inspection.expenses_paid_by_agency_original, external_email_sent: @inspection.external_email_sent, flat_fee: @inspection.flat_fee, flat_fee_original: @inspection.flat_fee_original, fresh_vegetables_checked: @inspection.fresh_vegetables_checked, holiday_multiplier: @inspection.holiday_multiplier, holiday_multiplier_original: @inspection.holiday_multiplier_original, ingredients_checked: @inspection.ingredients_checked, inspected_event_date_id: @inspection.inspected_event_date_id, inspector_approved_at: @inspection.inspector_approved_at, inspector_approved_by_id: @inspection.inspector_approved_by_id, inspector_id: @inspection.inspector_id, is_food_service: @inspection.is_food_service, kashruth_admin_approved_at: @inspection.kashruth_admin_approved_at, kashruth_admin_approved_by_id: @inspection.kashruth_admin_approved_by_id, kashruth_comments: @inspection.kashruth_comments, kilometers: @inspection.kilometers, kilometers_original: @inspection.kilometers_original, km_pay_calculation: @inspection.km_pay_calculation, km_pay_formula: @inspection.km_pay_formula, km_pay_override: @inspection.km_pay_override, labels_checked: @inspection.labels_checked, legacy_id: @inspection.legacy_id, master_formula_cards_checked: @inspection.master_formula_cards_checked, met_with_organization_contact_id: @inspection.met_with_organization_contact_id, non_certified_items_checked: @inspection.non_certified_items_checked, non_kosher_ingredients_checked: @inspection.non_kosher_ingredients_checked, organization_id: @inspection.organization_id, paid_at: @inspection.paid_at, paid_by_id: @inspection.paid_by_id, pas_bishul_yisroel_procedures_checked: @inspection.pas_bishul_yisroel_procedures_checked, pay_calculation: @inspection.pay_calculation, pay_formula: @inspection.pay_formula, pay_override: @inspection.pay_override, pay_type: @inspection.pay_type, pay_type_original: @inspection.pay_type_original, payment_comments: @inspection.payment_comments, private_comments: @inspection.private_comments, process_flow_checked: @inspection.process_flow_checked, products_checked: @inspection.products_checked, rc_approved_at: @inspection.rc_approved_at, rc_approved_by_id: @inspection.rc_approved_by_id, red_flag_items_checked: @inspection.red_flag_items_checked, reply_to_checked_existing_ingredients: @inspection.reply_to_checked_existing_ingredients, reply_to_closing_question_1: @inspection.reply_to_closing_question_1, reply_to_closing_question_2: @inspection.reply_to_closing_question_2, reply_to_closing_question_3: @inspection.reply_to_closing_question_3, reply_to_closing_question_4: @inspection.reply_to_closing_question_4, reply_to_closing_question_5: @inspection.reply_to_closing_question_5, reply_to_found_seals_intact: @inspection.reply_to_found_seals_intact, reply_to_midday_question_1: @inspection.reply_to_midday_question_1, reply_to_midday_question_2: @inspection.reply_to_midday_question_2, reply_to_midday_question_3: @inspection.reply_to_midday_question_3, reply_to_midday_question_4: @inspection.reply_to_midday_question_4, reply_to_midday_question_5: @inspection.reply_to_midday_question_5, reply_to_opening_question_1: @inspection.reply_to_opening_question_1, reply_to_opening_question_2: @inspection.reply_to_opening_question_2, reply_to_opening_question_3: @inspection.reply_to_opening_question_3, reply_to_opening_question_4: @inspection.reply_to_opening_question_4, reply_to_opening_question_5: @inspection.reply_to_opening_question_5, reply_to_parent_organization_profile_question_1: @inspection.reply_to_parent_organization_profile_question_1, reply_to_parent_organization_profile_question_2: @inspection.reply_to_parent_organization_profile_question_2, reply_to_parent_organization_profile_question_3: @inspection.reply_to_parent_organization_profile_question_3, reply_to_parent_organization_profile_question_4: @inspection.reply_to_parent_organization_profile_question_4, reply_to_parent_organization_profile_question_5: @inspection.reply_to_parent_organization_profile_question_5, reply_to_pas_bishul_setup: @inspection.reply_to_pas_bishul_setup, reply_to_sealed_all_areas: @inspection.reply_to_sealed_all_areas, reply_to_supplies_needed: @inspection.reply_to_supplies_needed, required_fields_filled: @inspection.required_fields_filled, shift_supervised: @inspection.shift_supervised, signature_at: @inspection.signature_at, signature_json: @inspection.signature_json, signature_name: @inspection.signature_name, start_time: @inspection.start_time, status: @inspection.status, steam_condensate_issue_checked: @inspection.steam_condensate_issue_checked, submitted_at: @inspection.submitted_at, submitted_by_id: @inspection.submitted_by_id, travel_duration: @inspection.travel_duration, travel_duration_original: @inspection.travel_duration_original, type: @inspection.type, updated_by_id: @inspection.updated_by_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inspection" do
    get inspection_url(@inspection), as: :json
    assert_response :success
  end

  test "should update inspection" do
    patch inspection_url(@inspection), params: { inspection: { accounting_approved_at: @inspection.accounting_approved_at, accounting_approved_by_id: @inspection.accounting_approved_by_id, additional_charges: @inspection.additional_charges, additional_profile_question_1_checked: @inspection.additional_profile_question_1_checked, additional_profile_question_2_checked: @inspection.additional_profile_question_2_checked, additional_profile_question_3_checked: @inspection.additional_profile_question_3_checked, additional_profile_question_4_checked: @inspection.additional_profile_question_4_checked, additional_profile_question_5_checked: @inspection.additional_profile_question_5_checked, admin_approved_at: @inspection.admin_approved_at, admin_approved_by_id: @inspection.admin_approved_by_id, automatic_koshering_checked: @inspection.automatic_koshering_checked, batch_sheets_checked: @inspection.batch_sheets_checked, bill_calculation: @inspection.bill_calculation, bill_formula: @inspection.bill_formula, bill_override: @inspection.bill_override, billed_at: @inspection.billed_at, billed_by_id: @inspection.billed_by_id, billing_rate_override: @inspection.billing_rate_override, bulk_ingredients_checked: @inspection.bulk_ingredients_checked, challa_procedures_checked: @inspection.challa_procedures_checked, changes_found: @inspection.changes_found, cleaning_in_place_checked: @inspection.cleaning_in_place_checked, comments: @inspection.comments, comments_original: @inspection.comments_original, contact_info_checked: @inspection.contact_info_checked, created_by_id: @inspection.created_by_id, dairy_pareve_segregation_checked: @inspection.dairy_pareve_segregation_checked, data_source: @inspection.data_source, date: @inspection.date, date_original: @inspection.date_original, deleted_at: @inspection.deleted_at, duration: @inspection.duration, duration_original: @inspection.duration_original, end_time: @inspection.end_time, expenses: @inspection.expenses, expenses_original: @inspection.expenses_original, expenses_paid_by_agency: @inspection.expenses_paid_by_agency, expenses_paid_by_agency_original: @inspection.expenses_paid_by_agency_original, external_email_sent: @inspection.external_email_sent, flat_fee: @inspection.flat_fee, flat_fee_original: @inspection.flat_fee_original, fresh_vegetables_checked: @inspection.fresh_vegetables_checked, holiday_multiplier: @inspection.holiday_multiplier, holiday_multiplier_original: @inspection.holiday_multiplier_original, ingredients_checked: @inspection.ingredients_checked, inspected_event_date_id: @inspection.inspected_event_date_id, inspector_approved_at: @inspection.inspector_approved_at, inspector_approved_by_id: @inspection.inspector_approved_by_id, inspector_id: @inspection.inspector_id, is_food_service: @inspection.is_food_service, kashruth_admin_approved_at: @inspection.kashruth_admin_approved_at, kashruth_admin_approved_by_id: @inspection.kashruth_admin_approved_by_id, kashruth_comments: @inspection.kashruth_comments, kilometers: @inspection.kilometers, kilometers_original: @inspection.kilometers_original, km_pay_calculation: @inspection.km_pay_calculation, km_pay_formula: @inspection.km_pay_formula, km_pay_override: @inspection.km_pay_override, labels_checked: @inspection.labels_checked, legacy_id: @inspection.legacy_id, master_formula_cards_checked: @inspection.master_formula_cards_checked, met_with_organization_contact_id: @inspection.met_with_organization_contact_id, non_certified_items_checked: @inspection.non_certified_items_checked, non_kosher_ingredients_checked: @inspection.non_kosher_ingredients_checked, organization_id: @inspection.organization_id, paid_at: @inspection.paid_at, paid_by_id: @inspection.paid_by_id, pas_bishul_yisroel_procedures_checked: @inspection.pas_bishul_yisroel_procedures_checked, pay_calculation: @inspection.pay_calculation, pay_formula: @inspection.pay_formula, pay_override: @inspection.pay_override, pay_type: @inspection.pay_type, pay_type_original: @inspection.pay_type_original, payment_comments: @inspection.payment_comments, private_comments: @inspection.private_comments, process_flow_checked: @inspection.process_flow_checked, products_checked: @inspection.products_checked, rc_approved_at: @inspection.rc_approved_at, rc_approved_by_id: @inspection.rc_approved_by_id, red_flag_items_checked: @inspection.red_flag_items_checked, reply_to_checked_existing_ingredients: @inspection.reply_to_checked_existing_ingredients, reply_to_closing_question_1: @inspection.reply_to_closing_question_1, reply_to_closing_question_2: @inspection.reply_to_closing_question_2, reply_to_closing_question_3: @inspection.reply_to_closing_question_3, reply_to_closing_question_4: @inspection.reply_to_closing_question_4, reply_to_closing_question_5: @inspection.reply_to_closing_question_5, reply_to_found_seals_intact: @inspection.reply_to_found_seals_intact, reply_to_midday_question_1: @inspection.reply_to_midday_question_1, reply_to_midday_question_2: @inspection.reply_to_midday_question_2, reply_to_midday_question_3: @inspection.reply_to_midday_question_3, reply_to_midday_question_4: @inspection.reply_to_midday_question_4, reply_to_midday_question_5: @inspection.reply_to_midday_question_5, reply_to_opening_question_1: @inspection.reply_to_opening_question_1, reply_to_opening_question_2: @inspection.reply_to_opening_question_2, reply_to_opening_question_3: @inspection.reply_to_opening_question_3, reply_to_opening_question_4: @inspection.reply_to_opening_question_4, reply_to_opening_question_5: @inspection.reply_to_opening_question_5, reply_to_parent_organization_profile_question_1: @inspection.reply_to_parent_organization_profile_question_1, reply_to_parent_organization_profile_question_2: @inspection.reply_to_parent_organization_profile_question_2, reply_to_parent_organization_profile_question_3: @inspection.reply_to_parent_organization_profile_question_3, reply_to_parent_organization_profile_question_4: @inspection.reply_to_parent_organization_profile_question_4, reply_to_parent_organization_profile_question_5: @inspection.reply_to_parent_organization_profile_question_5, reply_to_pas_bishul_setup: @inspection.reply_to_pas_bishul_setup, reply_to_sealed_all_areas: @inspection.reply_to_sealed_all_areas, reply_to_supplies_needed: @inspection.reply_to_supplies_needed, required_fields_filled: @inspection.required_fields_filled, shift_supervised: @inspection.shift_supervised, signature_at: @inspection.signature_at, signature_json: @inspection.signature_json, signature_name: @inspection.signature_name, start_time: @inspection.start_time, status: @inspection.status, steam_condensate_issue_checked: @inspection.steam_condensate_issue_checked, submitted_at: @inspection.submitted_at, submitted_by_id: @inspection.submitted_by_id, travel_duration: @inspection.travel_duration, travel_duration_original: @inspection.travel_duration_original, type: @inspection.type, updated_by_id: @inspection.updated_by_id } }, as: :json
    assert_response 200
  end

  test "should destroy inspection" do
    assert_difference('Inspection.count', -1) do
      delete inspection_url(@inspection), as: :json
    end

    assert_response 204
  end
end