class CreateGeneratedCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :generated_certificates do |t|
      t.string :certificate_id
      t.integer :company_id
      t.integer :security_level
      t.text :product_ids
      t.text :parameters
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
