class AddPatientlistToUsers < ActiveRecord::Migration[5.0]
  #def change
   # add_column :users, :patientlist, :integer, array: true, default: []
 # end
 def up
   execute "ALTER TABLE users ADD COLUMN patientlist integer[];"
 end
 
 def down
   execute "ALTER TABLE users DROP COLUMN patientlist;"
 end
 
 
end
