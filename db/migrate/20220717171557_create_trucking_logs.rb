class CreateTruckingLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :trucking_logs do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :comments
      t.integer :organization_id
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
