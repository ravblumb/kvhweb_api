class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.string :name
      t.integer :created_by_id
      t.integer :updated_by_id
      
      

      t.timestamps
    end
  end
end
