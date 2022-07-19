class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :producer_id,                                               :null => false
      t.string :data_source,             :limit => 20
      t.datetime :deleted_at
      t.integer :created_by_id
      t.integer :updated_by_id
      t.string :loc_comments,            :limit => 1000
      t.boolean :show_loc_comment_on_web,                 :default => true
      t.boolean :hide_from_web

      t.timestamps
    end
  end
end
