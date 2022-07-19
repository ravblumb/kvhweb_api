class CreateIngredientAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_attachments do |t|
      t.integer :ingredient_id
      t.integer :attachment_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
