class CreateParams < ActiveRecord::Migration[6.1]
  def change
    create_table :params do |t|
      t.string :key
      t.string :value
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
