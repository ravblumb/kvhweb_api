class CreateFailedLoginIps < ActiveRecord::Migration[6.1]
  def change
    create_table :failed_login_ips do |t|
      t.string :ip

      t.timestamps
    end
  end
end
