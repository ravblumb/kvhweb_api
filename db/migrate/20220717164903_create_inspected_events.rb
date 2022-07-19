class CreateInspectedEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :inspected_events do |t|
      t.integer :organization_id
      t.integer :venue_id
      t.string :alt_venue_name
      t.integer :alt_venue_address_id
      t.date :event_date
      t.time :event_time
      t.string :event_title
      t.integer :people_count
      t.boolean :is_kitchen_on_different_floor
      t.boolean :is_non_kosher_kitchen
      t.string :kosher_location
      t.string :non_kosher_location
      t.boolean :is_kashering_required
      t.string :kashering_required
      t.boolean :is_renting
      t.string :rental_equipment
      t.string :rental_supplier
      t.boolean :is_wine
      t.boolean :is_liquor
      t.boolean :is_candy
      t.boolean :is_other_supplies
      t.string :other_supplies
      t.boolean :is_sushi
      t.boolean :is_cotton_candy
      t.boolean :is_popcorn
      t.boolean :is_hotdogs
      t.boolean :is_cappuccino
      t.boolean :is_other_3rd_party_equipment
      t.string :other_3rd_party_equipment
      t.boolean :is_party_planner
      t.time :setup_time
      t.time :kitchen_open_time
      t.time :kitchen_close_time
      t.time :dishwashing_end_time
      t.time :mashgiach_request_time
      t.string :mashgiach_preference
      t.datetime :received_at
      t.text :comments
      t.boolean :requires_administrator_attention
      t.string :event_status
      t.integer :replaced_inspector_id
      t.integer :notebook_id
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.string :type
      t.datetime :signed_at
      t.integer :legacy_id
      t.datetime :billed_at
      t.integer :billed_by_id
      t.boolean :is_staff_meal
      t.boolean :is_confidential
      t.datetime :reviewed_at

      t.timestamps
    end
  end
end
