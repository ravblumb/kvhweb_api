class CreateProduceLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :produce_logs do |t|
      t.date :date
      t.time :time
      t.integer :organization_id
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.integer :inspection_id
      t.integer :produce_id
      t.string :bugs_found,                     :limit => 100
      t.integer :washes
      t.boolean :pass
      t.string :comments
      t.string :quantity,                     :limit => 50
      t.integer :infestation_level

      t.timestamps
    end
  end
end
