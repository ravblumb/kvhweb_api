class CreateInspectionProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :inspection_products do |t|
      t.integer :inspection_id
      t.integer :product_id
      t.string :product_report
      t.integer :issue_id

      t.timestamps
    end
  end
end
