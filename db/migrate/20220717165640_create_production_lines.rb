class CreateProductionLines < ActiveRecord::Migration[6.1]
  def change
    create_table :production_lines do |t|
      t.integer :plant_id
      t.string :name
      t.text :description
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.string :dairy_status

      t.timestamps
    end
  end
end
