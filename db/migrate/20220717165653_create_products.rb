class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string   :name
    t.string   :comments,                     :limit => 2000
    t.integer  :security_level
    t.string   :retail_or_commercial,         :limit => 2
    t.string   :other_producers
    t.string   :other_certifiers
    t.string   :date_code_format
    t.string   :sizes
    t.string   :packaging_style
    t.string   :code,                         :limit => 50
    t.boolean  :is_batch
    t.string   :ukd_id,                       :limit => 20
    t.boolean  :is_dairy
    t.boolean  :is_dairy_equipment
    t.boolean  :is_meat
    t.boolean  :is_fish
    t.boolean  :is_pas_yisroel
    t.boolean  :is_cholov_yisroel
    t.boolean  :is_bishul_yisroel
    t.boolean  :is_yoshon
    t.boolean  :is_passover
    t.string   :conditions,                   :limit => 1000
    t.datetime :approved_at
    t.datetime :expires_at
    t.datetime :cancelled_at
    t.string   :cancel_reason
    t.string   :symbol
    t.string   :passover_symbol
    t.string   :ukd_dairy_pareve_meat
    t.string   :ukd_other_status
    t.string   :kosher_status,                :limit => 20
    t.integer  :kosher_group
    t.integer  :producer_id
    t.integer  :certifier_id
    t.boolean  :is_service
    t.string   :data_source,                  :limit => 20
    t.boolean  :is_private_label_override
    t.datetime :deleted_at
    t.integer  :brand_id
    t.integer  :product_group_id
    t.boolean  :is_active_denorm,                             :default => true
    t.boolean  :is_duplicate_denorm,                          :default => false
    t.string   :producer_name_denorm
    t.integer  :previous_id
    t.integer  :created_by_id
    t.integer  :updated_by_id
    t.datetime :formula_complete_at
    t.boolean  :is_formula,                                   :default => false
    t.string   :loc_status_denorm
    t.string   :keywords,                     :limit => 512
    t.string   :kosher_compact_denorm,        :limit => 20,   :default => ""
    t.integer  :notebook_id
    t.string   :state,                        :limit => 20
    t.datetime :state_time
    t.datetime :last_reviewed_at
    t.integer  :production_line_id
    t.integer  :state_changed_by_id
    t.string   :previous_state
    t.datetime :previous_state_time
    t.integer  :previous_state_changed_by_id
    t.integer  :replaced_by_id
    t.boolean  :not_on_certifier_web_site
    t.boolean  :material_hauled
    t.string   :product_category,             :limit => 5
    t.string   :external_id,                  :limit => 30
    t.string   :upc_code
    t.string   :certificate_id,               :limit => 20
    t.integer  :dr_code
    t.string   :dr_details,                   :limit => 100

      t.timestamps
    end
  end
end
