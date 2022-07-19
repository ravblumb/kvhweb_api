class CreateFailedLogins < ActiveRecord::Migration[6.1]
  def change
    create_table :failed_logins do |t|
      t.string :login
      t.string :ip

      t.timestamps
    end
  end
end
