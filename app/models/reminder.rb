class Reminder < ActiveRecord::Base
 
    validates :Name, presence: true
    validates :Email, presence: true

end
