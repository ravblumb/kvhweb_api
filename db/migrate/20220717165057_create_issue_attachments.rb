class CreateIssueAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :issue_attachments do |t|
      t.integer :issue_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
