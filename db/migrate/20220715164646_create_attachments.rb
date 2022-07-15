class CreateAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :attachments do |t|
      t.string :name
      t.string :file_name
      t.string :content_type
      t.boolean :file_uploaded
      t.text :comments
      t.integer :organization_id
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      

      t.timestamps

      

    end
  end
end
