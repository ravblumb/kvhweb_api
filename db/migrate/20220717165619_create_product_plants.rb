class CreateProductPlants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_plants do |t|
      t.integer :product_id
      t.integer :plant_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
