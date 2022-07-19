class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :from
      t.string :to
      t.string :cc
      t.string :bcc
      t.string :subject
      t.text :body
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
