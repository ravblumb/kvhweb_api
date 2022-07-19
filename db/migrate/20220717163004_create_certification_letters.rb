class CreateCertificationLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :certification_letters do |t|
      t.string :file_name,            :limit => 1000
      t.string :content_type
      t.string :comments,              :limit => 2000
      t.boolean :is_batch
      t.boolean :is_passover
      t.datetime :issued_at
      t.datetime :expires_at
      t.string :conditions,            :limit => 1000
      t.string :symbol
      t.string :passover_symbol
      t.integer :kosher_group
      t.integer :company_id
      t.integer :producer_id
      t.integer :certifier_id
      t.datetime :deleted_at
      t.integer :created_by_id
      t.integer :updated_by_id
      t.boolean :file_uploaded,                 :default => true
      t.string :data_source
      t.string :file_digest

      t.timestamps
    end
  end
end
