class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.integer :region_id
      t.integer :country_id
      t.string :name
      t.string :code
      t.string :adm1_code

      t.timestamps
    end
  end
end
