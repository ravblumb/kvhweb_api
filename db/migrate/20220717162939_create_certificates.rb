class CreateCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :certificates do |t|
      t.string :unique_id,             :limit => 20
      t.boolean :is_dairy
      t.boolean :is_dairy_equipment
      t.boolean :is_meat
      t.boolean :is_fish
      t.boolean :is_pas_yisroel
      t.boolean :is_cholov_yisroel
      t.boolean :is_bishul_yisroel
      t.boolean :is_yoshon
      t.boolean :is_passover
      t.string :comments,              :limit => 2000
      t.string :conditions,              :limit => 1000
      t.datetime :approved_at
      t.datetime :expires_at
      t.datetime :cancelled_at
      t.string :cancel_reason
      t.string :symbol
      t.string :passover_symbol
      t.string :ukd_dairy_pareve_meat
      t.string :ukd_other_status
      t.integer :product_id,                            :null => false
      t.integer :certifier_id,                            :null => false
      t.string :data_source,           :limit => 20
      t.integer :kosher_group
      t.integer :security_level
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
