class CreateInspectedEventDates < ActiveRecord::Migration[6.1]
  def change
    create_table :inspected_event_dates do |t|
      t.integer :inspected_event_id
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :inspector_count
      t.string :event_type
      t.string :event_status
      t.text :comments
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.integer :legacy_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
