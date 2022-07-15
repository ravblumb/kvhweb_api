class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :city, :limit => 80
     
      t.string :state_province, :limit => 80
     
      t.string :country, :limit => 80
     
      t.string :postal_code, :limit => 20
      
      t.string :directions, :limit => 2000
     
      t.datetime :deleted_at
       
      t.integer :created_by_id
      
      t.integer :updated_by_id
    
      t.string :street
      
      t.string :google_friendly, :limit => 1000
      
      t.string :latitude
    
      t.string :longitude
      

      t.timestamps
    end
  end
end
