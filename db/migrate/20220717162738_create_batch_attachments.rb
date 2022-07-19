class CreateBatchAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :batch_attachments do |t|
      t.integer :batch_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
