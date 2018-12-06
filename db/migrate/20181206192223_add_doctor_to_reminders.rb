class AddDoctorToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :doctor, :string
  end
end
