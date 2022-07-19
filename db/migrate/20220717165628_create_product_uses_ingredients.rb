class CreateProductUsesIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :product_uses_ingredients do |t|
      t.integer :product_id
      t.integer :ingredient_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
