class AddEmailToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :Email, :string
  end
end
