class CreateInspections < ActiveRecord::Migration[6.1]
  def change
    create_table :inspections do |t|
     t.integer  :organization_id
    t.integer  :inspector_id,                                                                     :null => false
    t.datetime :date,                                                                             :null => false
    t.string   :pay_type,                                        :limit => 50
    t.float    :duration,                                                        :default => 0.0
    t.float    :kilometers,                                                      :default => 0.0
    t.float    :flat_fee,                                                        :default => 0.0
    t.float    :expenses,                                                        :default => 0.0
    t.string   :comments,                                        :limit => 1024
    t.integer  :created_by_id
    t.integer  :updated_by_id
    t.boolean  :ingredients_checked
    t.boolean  :red_flag_items_checked
    t.boolean  :non_kosher_ingredients_checked
    t.boolean  :bulk_ingredients_checked
    t.boolean  :products_checked
    t.boolean  :labels_checked
    t.boolean  :batch_sheets_checked
    t.boolean  :master_formula_cards_checked
    t.boolean  :process_flow_checked
    t.boolean  :non_certified_items_checked
    t.boolean  :pas_bishul_yisroel_procedures_checked
    t.boolean  :challa_procedures_checked
    t.boolean  :steam_condensate_issue_checked
    t.boolean  :dairy_pareve_segregation_checked
    t.boolean  :fresh_vegetables_checked
    t.boolean  :automatic_koshering_checked
    t.boolean  :cleaning_in_place_checked
    t.boolean  :changes_found
    t.text     :kashruth_comments
    t.float    :travel_duration,                                                 :default => 0.0
    t.float    :pay_calculation
    t.string   :pay_formula,                                     :limit => 1000
    t.float    :pay_override
    t.float    :km_pay_calculation
    t.string   :km_pay_formula,                                  :limit => 1000
    t.float    :km_pay_override
    t.float    :bill_calculation
    t.string   :bill_formula,                                    :limit => 1000
    t.float    :bill_override
    t.integer  :inspected_event_date_id
    t.time     :start_time
    t.time     :end_time
    t.string   :status
    t.string   :type
    t.datetime :submitted_at
    t.datetime :rc_approved_at
    t.datetime :admin_approved_at
    t.datetime :accounting_approved_at
    t.datetime :paid_at
    t.datetime :billed_at
    t.integer  :submitted_by_id
    t.integer  :rc_approved_by_id
    t.integer  :admin_approved_by_id
    t.integer  :accounting_approved_by_id
    t.integer  :paid_by_id
    t.integer  :billed_by_id
    t.string   :data_source
    t.integer  :legacy_id
    t.boolean  :is_food_service
    t.boolean  :contact_info_checked
    t.float    :billing_rate_override
    t.float    :holiday_multiplier
    t.float    :expenses_paid_by_agency
    t.string   :signature_name
    t.datetime :signature_at
    t.text     :signature_json
    t.text     :private_comments
    t.boolean  :additional_profile_question_1_checked
    t.boolean  :additional_profile_question_2_checked
    t.boolean  :additional_profile_question_3_checked
    t.boolean  :additional_profile_question_4_checked
    t.boolean  :additional_profile_question_5_checked
    t.datetime :deleted_at
    t.datetime :kashruth_admin_approved_at
    t.integer  :kashruth_admin_approved_by_id
    t.datetime :date_original
    t.float    :duration_original
    t.float    :travel_duration_original
    t.float    :kilometers_original
    t.string   :pay_type_original,                               :limit => 50
    t.float    :expenses_original
    t.float    :expenses_paid_by_agency_original
    t.float    :flat_fee_original
    t.float    :holiday_multiplier_original
    t.string   :comments_original,                               :limit => 1024
    t.string   :payment_comments
    t.float    :additional_charges
    t.datetime :inspector_approved_at
    t.integer  :inspector_approved_by_id
    t.string   :shift_supervised
    t.string   :reply_to_opening_question_1
    t.string   :reply_to_opening_question_2
    t.string   :reply_to_opening_question_3
    t.string   :reply_to_opening_question_4
    t.string   :reply_to_opening_question_5
    t.string   :reply_to_midday_question_1
    t.string   :reply_to_midday_question_2
    t.string   :reply_to_midday_question_3
    t.string   :reply_to_midday_question_4
    t.string   :reply_to_midday_question_5
    t.string   :reply_to_closing_question_1
    t.string   :reply_to_closing_question_2
    t.string   :reply_to_closing_question_3
    t.string   :reply_to_closing_question_4
    t.string   :reply_to_closing_question_5
    t.string   :reply_to_found_seals_intact,                     :limit => 10
    t.string   :reply_to_sealed_all_areas,                       :limit => 10
    t.string   :reply_to_pas_bishul_setup,                       :limit => 10
    t.string   :reply_to_checked_existing_ingredients,           :limit => 10
    t.string   :reply_to_supplies_needed,                        :limit => 100
    t.integer  :met_with_organization_contact_id
    t.string   :reply_to_parent_organization_profile_question_1, :limit => 10
    t.string   :reply_to_parent_organization_profile_question_2, :limit => 10
    t.string   :reply_to_parent_organization_profile_question_3, :limit => 10
    t.string   :reply_to_parent_organization_profile_question_4, :limit => 10
    t.string   :reply_to_parent_organization_profile_question_5, :limit => 10
    t.boolean  :required_fields_filled
    t.boolean  :external_email_sent

      t.timestamps
    end
  end
end
