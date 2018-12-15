class Reminder < ActiveRecord::Base
    
    belongs_to :user
    validates :user_id, presence: true
    default_scope -> { order(created_at: :desc) }
 #    validates_date :Date, on_or_before: lambda { Date.current }
    #validates :Name, presence: true, length: { maximum: 255 } 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :Email, presence: true, length: { maximum: 255, message: "Too long" },
                    format: { with: VALID_EMAIL_REGEX, message: "Not a valid email" }

        
    VALID_DATE_REGEX = /[0-1]{1}[0-9]{1}\/[0-3]{1}[0-9]{1}\/[1-2]{1}[0-9]{3}/
    validates :Date, presence: true, format: {with: VALID_DATE_REGEX, message: "Must be in format mm/dd/yyyy"}
    
    validates :Drug, presence: true
    validates :Amount, presence: true
    validates :Purpose, presence: true
    
    #uncomment when merge
    #validates :doctor, presence: true
    
    
    
end
