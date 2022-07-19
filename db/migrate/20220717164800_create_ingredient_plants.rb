class CreateIngredientPlants < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_plants do |t|
      t.integer :ingredient_id
      t.integer :plant_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
