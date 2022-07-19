class CreateOrganizationAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_attachments do |t|
      t.integer :organization_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
