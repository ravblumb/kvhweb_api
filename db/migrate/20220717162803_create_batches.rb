class CreateBatches < ActiveRecord::Migration[6.1]
  def change
    create_table :batches do |t|
      t.string :code,                         :limit => 50
      t.string :comments,                     :limit => 2000
      t.integer :product_id,                                   :null => false
      t.datetime :date
      t.datetime :approved_at
      t.datetime :deleted_at
      t.datetime :applied_at
      t.integer :created_by_id
      t.integer :updated_by_id
      t.string :conditions,                   :limit => 1024
      t.string :state,                        :limit => 20
      t.datetime :state_time
      t.integer :state_changed_by_id
      t.string :previous_state
      t.datetime :previous_state_time
      t.integer :previous_state_changed_by_id

      t.timestamps
    end
  end
end
