class AddActiveToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :Active, :boolean
  end
end
