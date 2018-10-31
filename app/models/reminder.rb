class Reminder < ActiveRecord::Base
    
    belongs_to :user
    validates :user_id, presence: true
    default_scope -> { order(created_at: :desc) }
    
    validates :Name, presence: true
    validates :Email, presence: true

end
