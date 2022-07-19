class CreateProductCertificationLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :product_certification_letters do |t|
      t.integer :product_id
      t.integer :certification_letter_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
