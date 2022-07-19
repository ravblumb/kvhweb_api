class CreateProductAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :product_attachments do |t|
      t.integer :product_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
