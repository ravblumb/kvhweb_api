class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string   :name
    t.string   :generic_name
    t.string   :comments,                     :limit => 2000
    t.string   :code,                         :limit => 50
    t.integer  :company_id,                                                   :null => false
    t.boolean  :is_dairy
    t.boolean  :is_dairy_equipment
    t.boolean  :is_meat
    t.boolean  :is_fish
    t.boolean  :is_passover
    t.string   :kosher_status,                :limit => 20
      t.datetime :deleted_at
      t.integer :ingredient_group_id
      t.integer :previous_id
      t.datetime :effective_until
    t.integer  :created_by_id
    t.integer  :updated_by_id
    t.string   :kosher_compact_denorm,        :limit => 20,   :default => ""
    t.integer  :notebook_id
    t.string   :state,                        :limit => 20
    t.datetime :state_time
    t.boolean  :red_flag_item
    t.datetime :last_reviewed_at
    t.integer  :state_changed_by_id
    t.string   :previous_state
    t.datetime :previous_state_time
    t.integer  :previous_state_changed_by_id
    t.boolean  :has_product_change
    t.boolean  :material_hauled

      t.timestamps
    end
  end
end
