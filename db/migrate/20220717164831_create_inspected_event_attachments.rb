class CreateInspectedEventAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :inspected_event_attachments do |t|
      t.integer :inspected_event_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
