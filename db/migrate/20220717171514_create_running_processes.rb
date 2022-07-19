class CreateRunningProcesses < ActiveRecord::Migration[6.1]
  def change
    create_table :running_processes do |t|
      t.datetime :start
      t.integer :pid
      t.string :session_id
      t.string :url
      t.text :info

      t.timestamps
    end
  end
end
