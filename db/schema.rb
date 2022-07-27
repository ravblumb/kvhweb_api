# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_18_032947) do

  create_table "actions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_actions_on_created_by_id"
  end

  create_table "additional_inspector_assignments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "inspector_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "addresses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "city", limit: 80
    t.string "state_province", limit: 80
    t.string "country", limit: 80
    t.string "postal_code", limit: 20
    t.string "directions", limit: 2000
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "street"
    t.string "google_friendly", limit: 1000
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "file_name"
    t.string "content_type"
    t.boolean "file_uploaded"
    t.text "comments"
    t.integer "organization_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_attachments_on_created_by_id"
    t.index ["organization_id"], name: "index_attachments_on_organization_id"
    t.index ["updated_by_id"], name: "index_attachments_on_updated_by_id"
  end

  create_table "batch_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "batch_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_batch_attachments_on_attachment_id"
    t.index ["batch_id"], name: "index_batch_attachments_on_batch_id"
  end

  create_table "batches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "code", limit: 50
    t.string "comments", limit: 2000
    t.integer "product_id", null: false
    t.datetime "date"
    t.datetime "approved_at"
    t.datetime "deleted_at"
    t.datetime "applied_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "conditions", limit: 1024
    t.string "state", limit: 20
    t.datetime "state_time"
    t.integer "state_changed_by_id"
    t.string "previous_state"
    t.datetime "previous_state_time"
    t.integer "previous_state_changed_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_batches_on_created_by_id"
    t.index ["previous_state_changed_by_id"], name: "index_batches_on_previous_state_changed_by_id"
    t.index ["product_id"], name: "index_batches_on_product_id"
    t.index ["state_changed_by_id"], name: "index_batches_on_state_changed_by_id"
    t.index ["updated_by_id"], name: "index_batches_on_updated_by_id"
  end

  create_table "billing_rates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "code", limit: 20
    t.string "name"
    t.float "hour_rate"
    t.float "first_five_hours_rate"
    t.float "min_hours"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.boolean "is_industrial"
    t.boolean "is_food_service"
    t.string "payroll_code"
    t.boolean "is_regular"
    t.float "base_fee"
    t.float "hour_pay_rate"
    t.float "base_pay_rate"
    t.boolean "override_mashgiach_pay_rate"
    t.float "min_pay_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_billing_rates_on_created_by_id"
    t.index ["updated_by_id"], name: "index_billing_rates_on_updated_by_id"
  end

  create_table "brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "producer_id", null: false
    t.string "data_source", limit: 20
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "loc_comments", limit: 1000
    t.boolean "show_loc_comment_on_web", default: true
    t.boolean "hide_from_web"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producer_id"], name: "index_brands_on_producer_id"
  end

  create_table "certificates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "unique_id", limit: 20
    t.boolean "is_dairy"
    t.boolean "is_dairy_equipment"
    t.boolean "is_meat"
    t.boolean "is_fish"
    t.boolean "is_pas_yisroel"
    t.boolean "is_cholov_yisroel"
    t.boolean "is_bishul_yisroel"
    t.boolean "is_yoshon"
    t.boolean "is_passover"
    t.string "comments", limit: 2000
    t.string "conditions", limit: 1000
    t.datetime "approved_at"
    t.datetime "expires_at"
    t.datetime "cancelled_at"
    t.string "cancel_reason"
    t.string "symbol"
    t.string "passover_symbol"
    t.string "ukd_dairy_pareve_meat"
    t.string "ukd_other_status"
    t.integer "product_id", null: false
    t.integer "certifier_id", null: false
    t.string "data_source", limit: 20
    t.integer "kosher_group"
    t.integer "security_level"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unique_id"], name: "index_certificates_on_unique_id"
  end

  create_table "certification_letters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "file_name", limit: 1000
    t.string "content_type"
    t.string "comments", limit: 2000
    t.boolean "is_batch"
    t.boolean "is_passover"
    t.datetime "issued_at"
    t.datetime "expires_at"
    t.string "conditions", limit: 1000
    t.string "symbol"
    t.string "passover_symbol"
    t.integer "kosher_group"
    t.integer "company_id"
    t.integer "producer_id"
    t.integer "certifier_id"
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.boolean "file_uploaded", default: true
    t.string "data_source"
    t.string "file_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["certifier_id"], name: "index_certification_letters_on_certifier_id"
    t.index ["company_id"], name: "index_certification_letters_on_company_id"
    t.index ["created_by_id"], name: "index_certification_letters_on_created_by_id"
    t.index ["producer_id"], name: "index_certification_letters_on_producer_id"
    t.index ["updated_by_id"], name: "index_certification_letters_on_updated_by_id"
  end

  create_table "challah_forms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "date"
    t.integer "inspection_id"
    t.integer "placed_by_id"
    t.string "tevel_type", limit: 30
    t.integer "matzo_used"
    t.integer "matzo_purchased"
    t.float "tevel_weight"
    t.integer "mixes_per_day"
    t.integer "baking_days_per_week"
    t.integer "mixes_per_week"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.integer "organization_id"
    t.float "weight_per_box"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "city_id"
    t.integer "country_id"
    t.integer "region_id"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "timezone", limit: 20
    t.integer "dma_id"
    t.string "code", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["dma_id"], name: "index_cities_on_dma_id"
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "company_brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "company_id"
    t.integer "brand_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_company_brands_on_brand_id"
    t.index ["company_id"], name: "index_company_brands_on_company_id"
  end

  create_table "contact_affiliations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "contact_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "type", limit: 50
    t.string "first_name", limit: 80
    t.string "last_name", limit: 80
    t.string "salutation", limit: 80
    t.string "position", limit: 80
    t.string "comments", limit: 2000
    t.integer "telcom_id"
    t.integer "organization_id", null: false
    t.integer "legacy_id"
    t.datetime "deleted_at"
    t.boolean "email_contact"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.boolean "email_notification", default: false
    t.float "pay_rate"
    t.integer "address_id"
    t.string "inspector_type"
    t.string "location_area"
    t.boolean "is_invoicing"
    t.string "data_source"
    t.integer "entered_by_company_id"
    t.datetime "out_of_the_office_until"
    t.string "map_marker_colour"
    t.integer "payroll_code"
    t.boolean "is_inactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_contacts_on_created_by_id"
    t.index ["entered_by_company_id"], name: "index_contacts_on_entered_by_company_id"
    t.index ["organization_id"], name: "index_contacts_on_organization_id"
    t.index ["updated_by_id"], name: "index_contacts_on_updated_by_id"
  end

  create_table "copack_relationship_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "attachment_id"
    t.integer "copack_relationship_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_copack_relationship_attachments_on_attachment_id"
    t.index ["copack_relationship_id"], name: "index_copack_relationship_attachments_on_copack_relationship_id"
  end

  create_table "copack_relationships", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "copack_manufacturer_id"
    t.integer "copack_client_id"
    t.datetime "manufacturer_signed_at"
    t.string "manufacturer_signature_name"
    t.text "manufacturer_signature_json"
    t.datetime "client_signed_at"
    t.string "client_signature_name"
    t.text "client_signature_json"
    t.integer "rc_approved_by_id"
    t.datetime "rc_approved_at"
    t.string "comments"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "country_id"
    t.string "name"
    t.string "fipf104"
    t.string "iso2"
    t.string "iso3"
    t.string "ison"
    t.string "internet"
    t.string "capital"
    t.string "map_reference"
    t.string "nationality_singular"
    t.string "nationality_plural"
    t.string "currency"
    t.string "currency_code"
    t.integer "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "from"
    t.string "to"
    t.string "cc"
    t.string "bcc"
    t.string "subject"
    t.text "body"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "failed_login_ips", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "failed_logins", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "login"
    t.string "ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generated_certificates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "certificate_id"
    t.integer "company_id"
    t.integer "security_level"
    t.text "product_ids"
    t.text "parameters"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_generated_certificates_on_company_id"
    t.index ["created_by_id"], name: "index_generated_certificates_on_created_by_id"
    t.index ["updated_by_id"], name: "index_generated_certificates_on_updated_by_id"
  end

  create_table "ingredient_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_ingredient_attachments_on_attachment_id"
    t.index ["ingredient_id"], name: "index_ingredient_attachments_on_ingredient_id"
  end

  create_table "ingredient_groups", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_ingredient_groups_on_company_id"
  end

  create_table "ingredient_plants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "plant_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_ingredient_plants_on_ingredient_id"
    t.index ["plant_id"], name: "index_ingredient_plants_on_plant_id"
  end

  create_table "ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "generic_name"
    t.string "comments", limit: 2000
    t.string "code", limit: 50
    t.integer "company_id", null: false
    t.boolean "is_dairy"
    t.boolean "is_dairy_equipment"
    t.boolean "is_meat"
    t.boolean "is_fish"
    t.boolean "is_passover"
    t.string "kosher_status", limit: 20
    t.datetime "deleted_at"
    t.integer "ingredient_group_id"
    t.integer "previous_id"
    t.datetime "effective_until"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "kosher_compact_denorm", limit: 20, default: ""
    t.integer "notebook_id"
    t.string "state", limit: 20
    t.datetime "state_time"
    t.boolean "red_flag_item"
    t.datetime "last_reviewed_at"
    t.integer "state_changed_by_id"
    t.string "previous_state"
    t.datetime "previous_state_time"
    t.integer "previous_state_changed_by_id"
    t.boolean "has_product_change"
    t.boolean "material_hauled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_ingredients_on_company_id"
    t.index ["created_by_id"], name: "index_ingredients_on_created_by_id"
    t.index ["ingredient_group_id"], name: "index_ingredients_on_ingredient_group_id"
    t.index ["previous_id"], name: "index_ingredients_on_previous_id"
    t.index ["previous_state_changed_by_id"], name: "index_ingredients_on_previous_state_changed_by_id"
    t.index ["state_changed_by_id"], name: "index_ingredients_on_state_changed_by_id"
    t.index ["updated_by_id"], name: "index_ingredients_on_updated_by_id"
  end

  create_table "inspected_event_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "inspected_event_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_inspected_event_attachments_on_attachment_id"
    t.index ["inspected_event_id"], name: "index_inspected_event_attachments_on_inspected_event_id"
  end

  create_table "inspected_event_dates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "inspected_event_id"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "inspector_count"
    t.string "event_type"
    t.string "event_status"
    t.text "comments"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.integer "legacy_id"
    t.integer "organization_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_inspected_event_dates_on_created_by_id"
    t.index ["inspected_event_id"], name: "index_inspected_event_dates_on_inspected_event_id"
    t.index ["organization_id"], name: "index_inspected_event_dates_on_organization_id"
    t.index ["updated_by_id"], name: "index_inspected_event_dates_on_updated_by_id"
  end

  create_table "inspected_events", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "venue_id"
    t.string "alt_venue_name"
    t.integer "alt_venue_address_id"
    t.date "event_date"
    t.time "event_time"
    t.string "event_title"
    t.integer "people_count"
    t.boolean "is_kitchen_on_different_floor"
    t.boolean "is_non_kosher_kitchen"
    t.string "kosher_location"
    t.string "non_kosher_location"
    t.boolean "is_kashering_required"
    t.string "kashering_required"
    t.boolean "is_renting"
    t.string "rental_equipment"
    t.string "rental_supplier"
    t.boolean "is_wine"
    t.boolean "is_liquor"
    t.boolean "is_candy"
    t.boolean "is_other_supplies"
    t.string "other_supplies"
    t.boolean "is_sushi"
    t.boolean "is_cotton_candy"
    t.boolean "is_popcorn"
    t.boolean "is_hotdogs"
    t.boolean "is_cappuccino"
    t.boolean "is_other_3rd_party_equipment"
    t.string "other_3rd_party_equipment"
    t.boolean "is_party_planner"
    t.time "setup_time"
    t.time "kitchen_open_time"
    t.time "kitchen_close_time"
    t.time "dishwashing_end_time"
    t.time "mashgiach_request_time"
    t.string "mashgiach_preference"
    t.datetime "received_at"
    t.text "comments"
    t.boolean "requires_administrator_attention"
    t.string "event_status"
    t.integer "replaced_inspector_id"
    t.integer "notebook_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.string "type"
    t.datetime "signed_at"
    t.integer "legacy_id"
    t.datetime "billed_at"
    t.integer "billed_by_id"
    t.boolean "is_staff_meal"
    t.boolean "is_confidential"
    t.datetime "reviewed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["billed_by_id"], name: "index_inspected_events_on_billed_by_id"
    t.index ["created_by_id"], name: "index_inspected_events_on_created_by_id"
    t.index ["organization_id"], name: "index_inspected_events_on_organization_id"
    t.index ["replaced_inspector_id"], name: "index_inspected_events_on_replaced_inspector_id"
    t.index ["updated_by_id"], name: "index_inspected_events_on_updated_by_id"
    t.index ["venue_id"], name: "index_inspected_events_on_venue_id"
  end

  create_table "inspection_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "inspection_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_inspection_attachments_on_attachment_id"
    t.index ["inspection_id"], name: "index_inspection_attachments_on_inspection_id"
  end

  create_table "inspection_ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "inspection_id"
    t.integer "ingredient_id"
    t.string "ingredient_report"
    t.integer "issue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inspection_products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "inspection_id"
    t.integer "product_id"
    t.string "product_report"
    t.integer "issue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inspections", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "inspector_id", null: false
    t.datetime "date", null: false
    t.string "pay_type", limit: 50
    t.float "duration", default: 0.0
    t.float "kilometers", default: 0.0
    t.float "flat_fee", default: 0.0
    t.float "expenses", default: 0.0
    t.string "comments", limit: 1024
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.boolean "ingredients_checked"
    t.boolean "red_flag_items_checked"
    t.boolean "non_kosher_ingredients_checked"
    t.boolean "bulk_ingredients_checked"
    t.boolean "products_checked"
    t.boolean "labels_checked"
    t.boolean "batch_sheets_checked"
    t.boolean "master_formula_cards_checked"
    t.boolean "process_flow_checked"
    t.boolean "non_certified_items_checked"
    t.boolean "pas_bishul_yisroel_procedures_checked"
    t.boolean "challa_procedures_checked"
    t.boolean "steam_condensate_issue_checked"
    t.boolean "dairy_pareve_segregation_checked"
    t.boolean "fresh_vegetables_checked"
    t.boolean "automatic_koshering_checked"
    t.boolean "cleaning_in_place_checked"
    t.boolean "changes_found"
    t.text "kashruth_comments"
    t.float "travel_duration", default: 0.0
    t.float "pay_calculation"
    t.string "pay_formula", limit: 1000
    t.float "pay_override"
    t.float "km_pay_calculation"
    t.string "km_pay_formula", limit: 1000
    t.float "km_pay_override"
    t.float "bill_calculation"
    t.string "bill_formula", limit: 1000
    t.float "bill_override"
    t.integer "inspected_event_date_id"
    t.time "start_time"
    t.time "end_time"
    t.string "status"
    t.string "type"
    t.datetime "submitted_at"
    t.datetime "rc_approved_at"
    t.datetime "admin_approved_at"
    t.datetime "accounting_approved_at"
    t.datetime "paid_at"
    t.datetime "billed_at"
    t.integer "submitted_by_id"
    t.integer "rc_approved_by_id"
    t.integer "admin_approved_by_id"
    t.integer "accounting_approved_by_id"
    t.integer "paid_by_id"
    t.integer "billed_by_id"
    t.string "data_source"
    t.integer "legacy_id"
    t.boolean "is_food_service"
    t.boolean "contact_info_checked"
    t.float "billing_rate_override"
    t.float "holiday_multiplier"
    t.float "expenses_paid_by_agency"
    t.string "signature_name"
    t.datetime "signature_at"
    t.text "signature_json"
    t.text "private_comments"
    t.boolean "additional_profile_question_1_checked"
    t.boolean "additional_profile_question_2_checked"
    t.boolean "additional_profile_question_3_checked"
    t.boolean "additional_profile_question_4_checked"
    t.boolean "additional_profile_question_5_checked"
    t.datetime "deleted_at"
    t.datetime "kashruth_admin_approved_at"
    t.integer "kashruth_admin_approved_by_id"
    t.datetime "date_original"
    t.float "duration_original"
    t.float "travel_duration_original"
    t.float "kilometers_original"
    t.string "pay_type_original", limit: 50
    t.float "expenses_original"
    t.float "expenses_paid_by_agency_original"
    t.float "flat_fee_original"
    t.float "holiday_multiplier_original"
    t.string "comments_original", limit: 1024
    t.string "payment_comments"
    t.float "additional_charges"
    t.datetime "inspector_approved_at"
    t.integer "inspector_approved_by_id"
    t.string "shift_supervised"
    t.string "reply_to_opening_question_1"
    t.string "reply_to_opening_question_2"
    t.string "reply_to_opening_question_3"
    t.string "reply_to_opening_question_4"
    t.string "reply_to_opening_question_5"
    t.string "reply_to_midday_question_1"
    t.string "reply_to_midday_question_2"
    t.string "reply_to_midday_question_3"
    t.string "reply_to_midday_question_4"
    t.string "reply_to_midday_question_5"
    t.string "reply_to_closing_question_1"
    t.string "reply_to_closing_question_2"
    t.string "reply_to_closing_question_3"
    t.string "reply_to_closing_question_4"
    t.string "reply_to_closing_question_5"
    t.string "reply_to_found_seals_intact", limit: 10
    t.string "reply_to_sealed_all_areas", limit: 10
    t.string "reply_to_pas_bishul_setup", limit: 10
    t.string "reply_to_checked_existing_ingredients", limit: 10
    t.string "reply_to_supplies_needed", limit: 100
    t.integer "met_with_organization_contact_id"
    t.string "reply_to_parent_organization_profile_question_1", limit: 10
    t.string "reply_to_parent_organization_profile_question_2", limit: 10
    t.string "reply_to_parent_organization_profile_question_3", limit: 10
    t.string "reply_to_parent_organization_profile_question_4", limit: 10
    t.string "reply_to_parent_organization_profile_question_5", limit: 10
    t.boolean "required_fields_filled"
    t.boolean "external_email_sent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accounting_approved_by_id"], name: "index_inspections_on_accounting_approved_by_id"
    t.index ["admin_approved_by_id"], name: "index_inspections_on_admin_approved_by_id"
    t.index ["billed_by_id"], name: "index_inspections_on_billed_by_id"
    t.index ["created_by_id"], name: "index_inspections_on_created_by_id"
    t.index ["inspected_event_date_id"], name: "index_inspections_on_inspected_event_date_id"
    t.index ["inspector_id"], name: "index_inspections_on_inspector_id"
    t.index ["kashruth_admin_approved_by_id"], name: "index_inspections_on_kashruth_admin_approved_by_id"
    t.index ["organization_id"], name: "index_inspections_on_organization_id"
    t.index ["paid_by_id"], name: "index_inspections_on_paid_by_id"
    t.index ["rc_approved_by_id"], name: "index_inspections_on_rc_approved_by_id"
    t.index ["submitted_by_id"], name: "index_inspections_on_submitted_by_id"
    t.index ["updated_by_id"], name: "index_inspections_on_updated_by_id"
  end

  create_table "inspector_assignments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "inspector_id"
    t.integer "organization_id"
    t.string "role"
    t.datetime "replaced_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inspector_id"], name: "index_inspector_assignments_on_inspector_id"
    t.index ["organization_id"], name: "index_inspector_assignments_on_organization_id"
  end

  create_table "issue_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "issue_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_issue_attachments_on_attachment_id"
    t.index ["issue_id"], name: "index_issue_attachments_on_issue_id"
  end

  create_table "issues", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.string "subject"
    t.integer "severity"
    t.text "comments"
    t.datetime "detected_at"
    t.integer "detected_by_id"
    t.datetime "resolved_at"
    t.integer "resolved_by_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.integer "product_id"
    t.integer "ingredient_id"
    t.integer "notebook_id"
    t.text "resolution"
    t.integer "inspection_id"
    t.datetime "snoozed_until"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_issues_on_created_by_id"
    t.index ["detected_by_id"], name: "index_issues_on_detected_by_id"
    t.index ["ingredient_id"], name: "index_issues_on_ingredient_id"
    t.index ["inspection_id"], name: "index_issues_on_inspection_id"
    t.index ["organization_id"], name: "index_issues_on_organization_id"
    t.index ["product_id"], name: "index_issues_on_product_id"
    t.index ["resolved_by_id"], name: "index_issues_on_resolved_by_id"
    t.index ["updated_by_id"], name: "index_issues_on_updated_by_id"
  end

  create_table "notebooks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_notebooks_on_company_id"
  end

  create_table "notes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "text", limit: 1024
    t.integer "notebook_id", null: false
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_notes_on_created_by_id"
    t.index ["notebook_id"], name: "index_notes_on_notebook_id"
  end

  create_table "organization_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_organization_attachments_on_attachment_id"
    t.index ["organization_id"], name: "index_organization_attachments_on_organization_id"
  end

  create_table "organization_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "comments"
    t.string "commercial_above"
    t.string "commercial_below"
    t.string "retail_above"
    t.string "retail_below"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.boolean "is_industrial"
    t.boolean "is_food_service"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_organization_categories_on_created_by_id"
    t.index ["updated_by_id"], name: "index_organization_categories_on_updated_by_id"
  end

  create_table "organization_organization_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "organization_category_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_organization_categories_on_organization_id"
  end

  create_table "organization_params", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "organization_id", null: false
    t.string "key", limit: 250
    t.string "value", limit: 2000
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_organization_params_on_created_by_id"
    t.index ["organization_id"], name: "index_organization_params_on_organization_id"
    t.index ["updated_by_id"], name: "index_organization_params_on_updated_by_id"
  end

  create_table "organizations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "type", limit: 50
    t.integer "legacy_id"
    t.string "data_source", limit: 20
    t.datetime "deleted_at"
    t.string "name"
    t.string "comments", limit: 2000
    t.boolean "is_passover"
    t.boolean "is_challa"
    t.boolean "is_shabbos_yom_tov"
    t.boolean "is_jewish_owned"
    t.boolean "is_in_web"
    t.string "alias"
    t.boolean "is_active"
    t.string "loc_comment", limit: 1000
    t.string "storage_loc_comment", limit: 1000
    t.string "legal_name"
    t.boolean "is_in_directory"
    t.string "date_code_format"
    t.boolean "is_all_kosher"
    t.boolean "is_private_label"
    t.boolean "is_batch"
    t.integer "inspection_frequency"
    t.text "technical_profile"
    t.datetime "contract_anniversary_date"
    t.datetime "product_loc_date"
    t.datetime "private_label_loc_date"
    t.string "billing_code", limit: 80
    t.integer "address_id"
    t.integer "telcom_id"
    t.integer "inspector_id"
    t.integer "coordinator_id"
    t.integer "company_id"
    t.datetime "certified_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "area_code", limit: 50
    t.string "name_without_line_breaks"
    t.string "other_certifiers"
    t.boolean "email_notification", default: false
    t.integer "alternate_inspector_id"
    t.string "keywords", limit: 512
    t.string "reliability"
    t.integer "reviewed_by_id"
    t.string "logo_filename"
    t.string "logo_content_type"
    t.binary "logo_binary_data"
    t.datetime "formulas_complete_at"
    t.string "cancel_reason"
    t.string "ukd_code", limit: 50
    t.string "bill_rule", limit: 50
    t.float "bill_amount"
    t.integer "inspection_contact_id"
    t.text "industry"
    t.text "ingredients_location"
    t.text "red_flag_items"
    t.text "non_kosher_ingredients"
    t.text "bulk_ingredients"
    t.text "pas_bishul_yisroel_procedures"
    t.text "challa_procedures"
    t.text "steam_condensate_issue"
    t.text "dairy_pareve_segregation"
    t.text "non_certified_items"
    t.text "fresh_vegetables"
    t.text "automatic_koshering"
    t.text "cleaning_in_place"
    t.string "seating"
    t.string "cuisine"
    t.boolean "product_code_is_public", default: false
    t.string "lock_box_number"
    t.datetime "contacts_reviewed_at"
    t.text "web_description"
    t.string "application_state"
    t.boolean "online_payment"
    t.string "link_to_article"
    t.string "incorporated_under_the_laws_of"
    t.boolean "is_certified_for_food_production"
    t.boolean "is_certified_for_food_packaging"
    t.boolean "is_certified_for_private_labels"
    t.boolean "is_certified_for_batches"
    t.float "annual_fee"
    t.integer "business_contact_id"
    t.text "additional_profile_question_1"
    t.text "additional_profile_question_2"
    t.text "additional_profile_question_3"
    t.text "additional_profile_question_4"
    t.text "additional_profile_question_5"
    t.boolean "disable_question_schedule_a"
    t.boolean "disable_question_schedule_b"
    t.boolean "disable_question_labels"
    t.boolean "disable_question_batch_sheets"
    t.boolean "disable_question_master_formula_cards"
    t.boolean "disable_question_process_flow"
    t.boolean "disable_question_changes_found"
    t.integer "billing_address_id"
    t.integer "mailing_address_id"
    t.string "billing_address_type"
    t.string "mailing_address_type"
    t.integer "account_manager_id"
    t.integer "alternate_inspection_contact_id"
    t.boolean "passover_on_label"
    t.boolean "is_access_permitted", default: true
    t.boolean "release_pending", default: true
    t.string "certifier_number"
    t.string "loc_sharing_allowed"
    t.string "opening_question_1"
    t.string "opening_question_2"
    t.string "opening_question_3"
    t.string "opening_question_4"
    t.string "opening_question_5"
    t.string "midday_question_1"
    t.string "midday_question_2"
    t.string "midday_question_3"
    t.string "midday_question_4"
    t.string "midday_question_5"
    t.string "closing_question_1"
    t.string "closing_question_2"
    t.string "closing_question_3"
    t.string "closing_question_4"
    t.string "closing_question_5"
    t.string "found_seals_intact", limit: 100
    t.boolean "disable_found_seals_intact"
    t.string "sealed_all_areas", limit: 100
    t.boolean "disable_sealed_all_areas"
    t.string "pas_bishul_setup", limit: 100
    t.boolean "disable_pas_bishul_setup"
    t.boolean "disable_produce_checking"
    t.boolean "disable_pas_bishul_yisroel_procedures"
    t.string "checked_existing_ingredients", limit: 100
    t.boolean "disable_checked_existing_ingredients"
    t.string "supplies_needed", limit: 100
    t.boolean "disable_supplies_needed"
    t.boolean "is_quasi_food_service"
    t.boolean "signing_not_required"
    t.integer "qa_contact_id"
    t.boolean "serves_meat"
    t.string "meat_comments"
    t.boolean "serves_dairy"
    t.string "dairy_comments"
    t.boolean "serves_pareve"
    t.string "pareve_comments"
    t.boolean "plant_that_serves_food"
    t.string "location_description", limit: 150
    t.boolean "is_copacker"
    t.string "external_email_for_inspections", limit: 150
    t.boolean "non_kosher_products"
    t.integer "main_contact_id"
    t.float "average_daily_mixes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_manager_id"], name: "index_organizations_on_account_manager_id"
    t.index ["address_id"], name: "index_organizations_on_address_id"
    t.index ["alternate_inspector_id"], name: "index_organizations_on_alternate_inspector_id"
    t.index ["company_id"], name: "index_organizations_on_company_id"
    t.index ["coordinator_id"], name: "index_organizations_on_coordinator_id"
    t.index ["inspector_id"], name: "index_organizations_on_inspector_id"
    t.index ["reviewed_by_id"], name: "index_organizations_on_reviewed_by_id"
    t.index ["telcom_id"], name: "index_organizations_on_telcom_id"
  end

  create_table "params", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_params_on_created_by_id"
    t.index ["updated_by_id"], name: "index_params_on_updated_by_id"
  end

  create_table "payments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.float "amount"
    t.integer "organization_id"
    t.integer "paid_by_id"
    t.datetime "paid_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.string "paid_ip_address"
    t.text "paid_response"
    t.string "paypal_token"
    t.text "paypal_response"
    t.string "paypal_payer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_payments_on_created_by_id"
    t.index ["organization_id"], name: "index_payments_on_organization_id"
    t.index ["paid_by_id"], name: "index_payments_on_paid_by_id"
    t.index ["paypal_payer_id"], name: "index_payments_on_paypal_payer_id"
    t.index ["updated_by_id"], name: "index_payments_on_updated_by_id"
  end

  create_table "personalizations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "key", limit: 250
    t.string "value", limit: 2000
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_personalizations_on_user_id"
  end

  create_table "produce_logs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "organization_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.integer "inspection_id"
    t.integer "produce_id"
    t.string "bugs_found", limit: 100
    t.integer "washes"
    t.boolean "pass"
    t.string "comments"
    t.string "quantity", limit: 50
    t.integer "infestation_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produces", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50
    t.float "group"
    t.string "bugs_usually_found", limit: 100
    t.text "procedure"
    t.datetime "deleted_at"
    t.string "picture_filename"
    t.string "picture_content_type"
    t.binary "picture_binary_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "product_id"
    t.integer "attachment_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_product_attachments_on_attachment_id"
    t.index ["product_id"], name: "index_product_attachments_on_product_id"
  end

  create_table "product_certification_letters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "product_id"
    t.integer "certification_letter_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["certification_letter_id"], name: "index_product_certification_letters_on_certification_letter_id"
    t.index ["product_id"], name: "index_product_certification_letters_on_product_id"
  end

  create_table "product_groups", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_product_groups_on_company_id"
  end

  create_table "product_is_ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "product_id"
    t.integer "ingredient_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_product_is_ingredients_on_ingredient_id"
    t.index ["product_id"], name: "index_product_is_ingredients_on_product_id"
  end

  create_table "product_plants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "product_id"
    t.integer "plant_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_product_plants_on_plant_id"
    t.index ["product_id"], name: "index_product_plants_on_product_id"
  end

  create_table "product_uses_ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "product_id"
    t.integer "ingredient_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_product_uses_ingredients_on_ingredient_id"
    t.index ["product_id"], name: "index_product_uses_ingredients_on_product_id"
  end

  create_table "production_lines", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "plant_id"
    t.string "name"
    t.text "description"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.string "dairy_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_production_lines_on_plant_id"
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "comments", limit: 2000
    t.integer "security_level"
    t.string "retail_or_commercial", limit: 2
    t.string "other_producers"
    t.string "other_certifiers"
    t.string "date_code_format"
    t.string "sizes"
    t.string "packaging_style"
    t.string "code", limit: 50
    t.boolean "is_batch"
    t.string "ukd_id", limit: 20
    t.boolean "is_dairy"
    t.boolean "is_dairy_equipment"
    t.boolean "is_meat"
    t.boolean "is_fish"
    t.boolean "is_pas_yisroel"
    t.boolean "is_cholov_yisroel"
    t.boolean "is_bishul_yisroel"
    t.boolean "is_yoshon"
    t.boolean "is_passover"
    t.string "conditions", limit: 1000
    t.datetime "approved_at"
    t.datetime "expires_at"
    t.datetime "cancelled_at"
    t.string "cancel_reason"
    t.string "symbol"
    t.string "passover_symbol"
    t.string "ukd_dairy_pareve_meat"
    t.string "ukd_other_status"
    t.string "kosher_status", limit: 20
    t.integer "kosher_group"
    t.integer "producer_id"
    t.integer "certifier_id"
    t.boolean "is_service"
    t.string "data_source", limit: 20
    t.boolean "is_private_label_override"
    t.datetime "deleted_at"
    t.integer "brand_id"
    t.integer "product_group_id"
    t.boolean "is_active_denorm", default: true
    t.boolean "is_duplicate_denorm", default: false
    t.string "producer_name_denorm"
    t.integer "previous_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "formula_complete_at"
    t.boolean "is_formula", default: false
    t.string "loc_status_denorm"
    t.string "keywords", limit: 512
    t.string "kosher_compact_denorm", limit: 20, default: ""
    t.integer "notebook_id"
    t.string "state", limit: 20
    t.datetime "state_time"
    t.datetime "last_reviewed_at"
    t.integer "production_line_id"
    t.integer "state_changed_by_id"
    t.string "previous_state"
    t.datetime "previous_state_time"
    t.integer "previous_state_changed_by_id"
    t.integer "replaced_by_id"
    t.boolean "not_on_certifier_web_site"
    t.boolean "material_hauled"
    t.string "product_category", limit: 5
    t.string "external_id", limit: 30
    t.string "upc_code"
    t.string "certificate_id", limit: 20
    t.integer "dr_code"
    t.string "dr_details", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["certifier_id"], name: "index_products_on_certifier_id"
    t.index ["created_by_id"], name: "index_products_on_created_by_id"
    t.index ["previous_id"], name: "index_products_on_previous_id"
    t.index ["previous_state_changed_by_id"], name: "index_products_on_previous_state_changed_by_id"
    t.index ["producer_id"], name: "index_products_on_producer_id"
    t.index ["product_group_id"], name: "index_products_on_product_group_id"
    t.index ["production_line_id"], name: "index_products_on_production_line_id"
    t.index ["replaced_by_id"], name: "index_products_on_replaced_by_id"
    t.index ["state_changed_by_id"], name: "index_products_on_state_changed_by_id"
    t.index ["ukd_id"], name: "index_products_on_ukd_id"
    t.index ["updated_by_id"], name: "index_products_on_updated_by_id"
  end

  create_table "regions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "region_id"
    t.integer "country_id"
    t.string "name"
    t.string "code"
    t.string "adm1_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "report_templates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "report", limit: 250
    t.string "name", limit: 250
    t.boolean "is_public"
    t.integer "columns_per_page"
    t.string "new_page_for_group", limit: 250
    t.integer "font_size"
    t.string "paper_orientation", limit: 20
    t.boolean "group_headers_on_separate_lines"
    t.boolean "repeat_all_group_headers"
    t.boolean "repeat_table_header"
    t.string "column_list", limit: 1000
    t.string "report_column_list", limit: 1000
    t.string "group_list", limit: 1000
    t.string "sort_list", limit: 1000
    t.boolean "include_in_menu"
    t.boolean "use_table"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.boolean "small_header"
    t.boolean "remove_space"
    t.text "filter"
    t.boolean "show_filter", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_by_id"], name: "index_report_templates_on_created_by_id"
    t.index ["updated_by_id"], name: "index_report_templates_on_updated_by_id"
    t.index ["user_id"], name: "index_report_templates_on_user_id"
  end

  create_table "running_processes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "start"
    t.integer "pid"
    t.string "session_id"
    t.string "url"
    t.text "info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_running_processes_on_session_id"
  end

  create_table "telcoms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "phone", limit: 50
    t.string "fax", limit: 50
    t.string "email"
    t.string "mobile", limit: 50
    t.string "web_site"
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trucking_log_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "attachment_id"
    t.integer "trucking_log_id"
    t.datetime "deleted_at"
    t.datetime "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attachment_id"], name: "index_trucking_log_attachments_on_attachment_id"
    t.index ["trucking_log_id"], name: "index_trucking_log_attachments_on_trucking_log_id"
  end

  create_table "trucking_logs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "comments"
    t.integer "organization_id"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ukd_import_retries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "agency_name"
    t.string "file_name"
    t.string "import_type"
    t.integer "retries_left"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "login", limit: 40
    t.string "email", limit: 100
    t.string "crypted_password", limit: 40
    t.string "salt", limit: 40
    t.string "remember_token", limit: 40
    t.datetime "remember_token_expires_at"
    t.integer "contact_id", null: false
    t.datetime "deleted_at"
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.string "roles"
    t.datetime "eula_accepted_at"
    t.boolean "is_password_change_required", default: false
    t.integer "signature_id"
    t.boolean "is_confirmation_required", default: false
    t.boolean "read_only", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["contact_id"], name: "index_users_on_contact_id"
    t.index ["created_by_id"], name: "index_users_on_created_by_id"
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["updated_by_id"], name: "index_users_on_updated_by_id"
  end

end
