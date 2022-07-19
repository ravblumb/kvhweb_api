class CreateInspectionAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :inspection_attachments do |t|
      t.integer :inspection_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
