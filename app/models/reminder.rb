class Reminder < ActiveRecord::Base
    
    belongs_to :user
    validates :user_id, presence: true
    default_scope -> { order(created_at: :desc) }
    validates_date :Date, on_or_before: lambda { Date.current }
    validates :Name, presence: true, length: { maximum: 255 } 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :Email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
