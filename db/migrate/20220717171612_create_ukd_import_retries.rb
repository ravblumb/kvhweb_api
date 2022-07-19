class CreateUkdImportRetries < ActiveRecord::Migration[6.1]
  def change
    create_table :ukd_import_retries do |t|
      t.string :agency_name
      t.string :file_name
      t.string :import_type
      t.integer :retries_left

      t.timestamps
    end
  end
end
