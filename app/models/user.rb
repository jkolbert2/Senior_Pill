class User < ApplicationRecord
    has_many :reminders
    accepts_nested_attributes_for :reminders
    
    before_save { self.email = email.downcase }
    
    validates :name,  presence: true, length: { maximum: 50, message: "Must be less than 50 characters!" }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255, message: "Too long!" },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
   
    validates_uniqueness_of :email, :on => :create
    has_secure_password

    VALID_PASSWORD_REGEX = /\A{6,40}/x
    validates :password, length: { minimum: 6, message: "Must be a least 6 characters!" }, format: { with: VALID_PASSWORD_REGEX }
    

    validates_presence_of :password, :password_confirmation
    validates_confirmation_of :password, message: "Passwords do not match!"

    def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
    end
    

    
end
