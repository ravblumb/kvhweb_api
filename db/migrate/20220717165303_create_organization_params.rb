class CreateOrganizationParams < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_params do |t|
      t.integer :organization_id,                            :null => false
      t.string :key,                   :limit => 250
      t.string :value,                     :limit => 2000
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
