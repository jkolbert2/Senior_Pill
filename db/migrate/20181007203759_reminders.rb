class Reminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.string 'Date'
      t.string 'Name'
      t.string 'Drug'
      t.string 'Purpose'
      t.string 'Amount'
      t.timestamps null: false
    end
    add_index :reminders, [:user_id, :created_at]
  end
end
