class AddTimeToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :Time, :string
  end
end
