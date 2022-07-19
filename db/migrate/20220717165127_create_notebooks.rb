class CreateNotebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :notebooks do |t|
      t.integer :company_id
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
