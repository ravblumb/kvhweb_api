class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string   :login,                       :limit => 40
    t.string   :email,                       :limit => 100
    t.string   :crypted_password,            :limit => 40
    t.string   :salt,                        :limit => 40
    t.string   :remember_token,              :limit => 40
    t.datetime :remember_token_expires_at
    t.integer  :contact_id,                                                    :null => false
    t.datetime :deleted_at
    t.integer  :created_by_id
    t.integer  :updated_by_id
    t.string   :roles
    t.datetime :eula_accepted_at
    t.boolean  :is_password_change_required,                :default => false
    t.integer  :signature_id
    t.boolean  :is_confirmation_required,                   :default => false
    t.boolean  :read_only,                                  :default => false

      t.timestamps
    end
  end
end
