class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.integer :organization_id
      t.string :subject
      t.integer :severity
      t.text :comments
      t.datetime :detected_at
      t.integer :detected_by_id
      t.datetime :resolved_at
      t.integer :resolved_by_id
      t.integer :created_by_id
      t.integer :updated_by_id
      t.integer :product_id
      t.integer :ingredient_id
      t.integer :notebook_id
      t.text :resolution
      t.integer :inspection_id
      t.datetime :snoozed_until

      t.timestamps
    end
  end
end
