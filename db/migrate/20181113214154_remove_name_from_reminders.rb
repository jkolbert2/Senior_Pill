class RemoveNameFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :Name, :string
  end
end
