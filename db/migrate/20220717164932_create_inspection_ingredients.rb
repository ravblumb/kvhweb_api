class CreateInspectionIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :inspection_ingredients do |t|
      t.integer :inspection_id
      t.integer :ingredient_id
      t.string :ingredient_report
      t.integer :issue_id

      t.timestamps
    end
  end
end
