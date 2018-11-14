class AddTimeToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :Time, :String
  end
end
