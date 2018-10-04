class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminder do |t|
      t.string 'Date'
      t.string 'Name'
      t.string 'Drug'
      t.string 'Purpose'
      t.string 'Amount'
      t.timestamps null: false
    end
  end
end
