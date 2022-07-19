class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
t.string   :type,                                  :limit => 50
    t.integer  :legacy_id
    t.string   :data_source,                           :limit => 20
    t.datetime :deleted_at
    t.string   :name
    t.string   :comments,                              :limit => 2000
    t.boolean  :is_passover
    t.boolean  :is_challa
    t.boolean  :is_shabbos_yom_tov
    t.boolean  :is_jewish_owned
    t.boolean  :is_in_web
    t.string   :alias
    t.boolean  :is_active
    t.string   :loc_comment,                           :limit => 1000
    t.string   :storage_loc_comment,                   :limit => 1000
    t.string   :legal_name
    t.boolean  :is_in_directory
    t.string   :date_code_format
    t.boolean  :is_all_kosher
    t.boolean  :is_private_label
    t.boolean  :is_batch
    t.integer  :inspection_frequency
    t.text     :technical_profile
    t.datetime :contract_anniversary_date
    t.datetime :product_loc_date
    t.datetime :private_label_loc_date
    t.string   :billing_code,                          :limit => 80
    t.integer  :address_id
    t.integer  :telcom_id
    t.integer  :inspector_id
    t.integer  :coordinator_id
    t.integer  :company_id
    t.datetime :certified_at
    t.integer  :created_by_id
    t.integer  :updated_by_id
    t.string   :area_code,                             :limit => 50
    t.string   :name_without_line_breaks
    t.string   :other_certifiers
    t.boolean  :email_notification,                                    :default => false
    t.integer  :alternate_inspector_id
    t.string   :keywords,                              :limit => 512
    t.string   :reliability
    t.integer  :reviewed_by_id
    t.string   :logo_filename
    t.string   :logo_content_type
    t.binary   :logo_binary_data
    t.datetime :formulas_complete_at
    t.string   :cancel_reason
    t.string   :ukd_code,                              :limit => 50
    t.string   :bill_rule,                             :limit => 50
    t.float    :bill_amount
    t.integer  :inspection_contact_id
    t.text     :industry
    t.text     :ingredients_location
    t.text     :red_flag_items
    t.text     :non_kosher_ingredients
    t.text     :bulk_ingredients
    t.text     :pas_bishul_yisroel_procedures
    t.text     :challa_procedures
    t.text     :steam_condensate_issue
    t.text     :dairy_pareve_segregation
    t.text     :non_certified_items
    t.text     :fresh_vegetables
    t.text     :automatic_koshering
    t.text     :cleaning_in_place
    t.string   :seating
    t.string   :cuisine
    t.boolean  :product_code_is_public,                                :default => false
    t.string   :lock_box_number
    t.datetime :contacts_reviewed_at
    t.text     :web_description
    t.string   :application_state
    t.boolean  :online_payment
    t.string   :link_to_article
    t.string   :incorporated_under_the_laws_of
    t.boolean  :is_certified_for_food_production
    t.boolean  :is_certified_for_food_packaging
    t.boolean  :is_certified_for_private_labels
    t.boolean  :is_certified_for_batches
    t.float    :annual_fee
    t.integer  :business_contact_id
    t.text     :additional_profile_question_1
    t.text     :additional_profile_question_2
    t.text     :additional_profile_question_3
    t.text     :additional_profile_question_4
    t.text     :additional_profile_question_5
    t.boolean  :disable_question_schedule_a
    t.boolean  :disable_question_schedule_b
    t.boolean  :disable_question_labels
    t.boolean  :disable_question_batch_sheets
    t.boolean  :disable_question_master_formula_cards
    t.boolean  :disable_question_process_flow
    t.boolean  :disable_question_changes_found
    t.integer  :billing_address_id
    t.integer  :mailing_address_id
    t.string   :billing_address_type
    t.string   :mailing_address_type
    t.integer  :account_manager_id
    t.integer  :alternate_inspection_contact_id
    t.boolean  :passover_on_label
    t.boolean  :is_access_permitted,                                   :default => true
    t.boolean  :release_pending,                                       :default => true
    t.string   :certifier_number
    t.string   :loc_sharing_allowed
    t.string   :opening_question_1
    t.string   :opening_question_2
    t.string   :opening_question_3
    t.string   :opening_question_4
    t.string   :opening_question_5
    t.string   :midday_question_1
    t.string   :midday_question_2
    t.string   :midday_question_3
    t.string   :midday_question_4
    t.string   :midday_question_5
    t.string   :closing_question_1
    t.string   :closing_question_2
    t.string   :closing_question_3
    t.string   :closing_question_4
    t.string   :closing_question_5
    t.string   :found_seals_intact,                    :limit => 100
    t.boolean  :disable_found_seals_intact
    t.string   :sealed_all_areas,                      :limit => 100
    t.boolean  :disable_sealed_all_areas
    t.string   :pas_bishul_setup,                      :limit => 100
    t.boolean  :disable_pas_bishul_setup
    t.boolean  :disable_produce_checking
    t.boolean  :disable_pas_bishul_yisroel_procedures
    t.string   :checked_existing_ingredients,          :limit => 100
    t.boolean  :disable_checked_existing_ingredients
    t.string   :supplies_needed,                       :limit => 100
    t.boolean  :disable_supplies_needed
    t.boolean  :is_quasi_food_service
    t.boolean  :signing_not_required
    t.integer  :qa_contact_id
    t.boolean  :serves_meat
    t.string   :meat_comments
    t.boolean  :serves_dairy
    t.string   :dairy_comments
    t.boolean  :serves_pareve
    t.string   :pareve_comments
    t.boolean  :plant_that_serves_food
    t.string   :location_description,                  :limit => 150
    t.boolean  :is_copacker
    t.string   :external_email_for_inspections,        :limit => 150
    t.boolean  :non_kosher_products
    t.integer  :main_contact_id
    t.float    :average_daily_mixes

      t.timestamps
    end
  end
end
