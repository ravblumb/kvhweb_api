class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :type,           :limit => 50
      t.string :first_name,           :limit => 80
      t.string :last_name,           :limit => 80
      t.string :salutation,           :limit => 80
      t.string :position,           :limit => 80
      t.string :comments,              :limit => 2000
      t.integer :telcom_id
      t.integer :organization_id,                            :null => false
      t.integer :legacy_id
      t.datetime :deleted_at
      t.boolean :email_contact
      t.integer :created_by_id
      t.integer :updated_by_id
      t.boolean :email_notification,                      :default => false
      t.float :pay_rate
      t.integer :address_id
      t.string :inspector_type
      t.string :location_area
      t.boolean :is_invoicing
      t.string :data_source
      t.integer :entered_by_company_id
      t.datetime :out_of_the_office_until
      t.string :map_marker_colour
      t.integer :payroll_code
      t.boolean :is_inactive

      t.timestamps
    end
  end
end
