class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :name
      t.float :amount
      t.integer :organization_id
      t.integer :paid_by_id
      t.datetime :paid_at
      t.integer :created_by_id
      t.integer :updated_by_id
      t.datetime :deleted_at
      t.string :paid_ip_address
      t.text :paid_response
      t.string :paypal_token
      t.text :paypal_response
      t.string :paypal_payer_id

      t.timestamps
    end
  end
end
