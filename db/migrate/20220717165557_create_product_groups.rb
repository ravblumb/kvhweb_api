class CreateProductGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :product_groups do |t|
      t.string :name
      t.integer :company_id,  :null => false
      t.datetime :deleted_at
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
