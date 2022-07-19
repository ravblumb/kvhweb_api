class CreateCompanyBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :company_brands do |t|
      t.integer :company_id
      t.integer :brand_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
