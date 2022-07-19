class CreateCopackRelationshipAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :copack_relationship_attachments do |t|
      t.integer :attachment_id
      t.integer :copack_relationship_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
