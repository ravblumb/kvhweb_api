class CreateAdditionalInspectorAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :additional_inspector_assignments do |t|
      t.integer :organization_id
      
      t.integer :inspector_id
  
      t.integer :created_by_id
     
      t.integer :updated_by_id
      
      t.datetime :deleted_at
      
      
    

      t.timestamps
    end
  end
end
