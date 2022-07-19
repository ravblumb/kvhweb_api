class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.integer :country_id
      t.string :name
      t.string :fipf104
      t.string :iso2
      t.string :iso3
      t.string :ison
      t.string :internet
      t.string :capital
      t.string :map_reference
      t.string :nationality_singular
      t.string :nationality_plural
      t.string :currency
      t.string :currency_code
      t.integer :population

      t.timestamps
    end
  end
end
