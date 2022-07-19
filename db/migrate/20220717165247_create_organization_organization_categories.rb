class CreateOrganizationOrganizationCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_organization_categories do |t|
      t.integer :organization_id
      t.integer :organization_category_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
