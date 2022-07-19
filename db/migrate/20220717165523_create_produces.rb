class CreateProduces < ActiveRecord::Migration[6.1]
  def change
    create_table :produces do |t|
      t.string :name,                     :limit => 50
      t.float :group
      t.string :bugs_usually_found,                     :limit => 100
      t.text :procedure
      t.datetime :deleted_at
      t.string :picture_filename
      t.string :picture_content_type
      t.binary :picture_binary_data

      t.timestamps
    end
  end
end
