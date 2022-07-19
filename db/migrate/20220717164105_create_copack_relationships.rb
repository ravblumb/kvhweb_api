class CreateCopackRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :copack_relationships do |t|
      t.integer :copack_manufacturer_id
      t.integer :copack_client_id
      t.datetime :manufacturer_signed_at
      t.string :manufacturer_signature_name
      t.text :manufacturer_signature_json
      t.datetime :client_signed_at
      t.string :client_signature_name
      t.text :client_signature_json
      t.integer :rc_approved_by_id
      t.datetime :rc_approved_at
      t.string :comments
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
