class CreateChallahForms < ActiveRecord::Migration[6.1]
  def change
    create_table :challah_forms do |t|
      t.datetime :date
      t.integer :inspection_id
      t.integer :placed_by_id
      t.string :tevel_type,           :limit => 30
      t.integer :matzo_used
      t.integer :matzo_purchased
      t.float :tevel_weight
      t.integer :mixes_per_day
      t.integer :baking_days_per_week
      t.integer :mixes_per_week
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.integer :organization_id
      t.float :weight_per_box

      t.timestamps
    end
  end
end
