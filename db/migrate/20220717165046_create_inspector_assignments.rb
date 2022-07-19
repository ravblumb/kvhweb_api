class CreateInspectorAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :inspector_assignments do |t|
      t.integer :inspector_id
      t.integer :organization_id
      t.string :role
      t.datetime :replaced_at

      t.timestamps
    end
  end
end
