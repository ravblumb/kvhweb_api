class CreateBillingRates < ActiveRecord::Migration[6.1]
  def change
    create_table :billing_rates do |t|
      t.string :code,                        :limit => 20
      t.string :name
      t.float :hour_rate
      t.float :first_five_hours_rate
      t.float :min_hours
      t.integer :created_by_id
      t.integer :updated_by_id
      t.boolean :is_industrial
      t.boolean :is_food_service
      t.string :payroll_code
      t.boolean :is_regular
      t.float :base_fee
      t.float :hour_pay_rate
      t.float :base_pay_rate
      t.boolean :override_mashgiach_pay_rate
      t.float :min_pay_hours

      t.timestamps
    end
  end
end
