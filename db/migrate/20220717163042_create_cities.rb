class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.integer :city_id
      t.integer :country_id
      t.integer :region_id
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :timezone,           :limit => 20
      t.integer :dma_id
      t.string :code,           :limit => 20

      t.timestamps
    end
  end
end
