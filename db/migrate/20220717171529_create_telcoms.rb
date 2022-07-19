class CreateTelcoms < ActiveRecord::Migration[6.1]
  def change
    create_table :telcoms do |t|
      t.string :phone,         :limit => 50
      t.string :fax,         :limit => 50
      t.string :email
      t.string :mobile,         :limit => 50
      t.string :web_site
      t.datetime :deleted_at
      t.integer :created_by_id
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
