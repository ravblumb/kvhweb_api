class CreateOrganizationCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_categories do |t|
      t.string :code
      t.string :name
      t.string :comments
      t.string :commercial_above
      t.string :commercial_below
      t.string :retail_above
      t.string :retail_below
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.boolean :is_industrial
      t.boolean :is_food_service

      t.timestamps
    end
  end
end
