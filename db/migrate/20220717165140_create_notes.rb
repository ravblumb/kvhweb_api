class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :text,                   :limit => 1024
      t.integer :notebook_id,                            :null => false
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
