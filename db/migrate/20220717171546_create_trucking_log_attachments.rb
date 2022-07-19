class CreateTruckingLogAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :trucking_log_attachments do |t|
      t.integer :attachment_id
      t.integer :trucking_log_id
      t.datetime :deleted_at
      t.datetime :start_date

      t.timestamps
    end
  end
end
