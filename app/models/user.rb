class User < ApplicationRecord
    
    has_many :reminders
    accepts_nested_attributes_for :reminders
    
    before_save { self.email = email.downcase }
    
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    validates_length_of :email,
        :maximum   => 255,
        :tokenizer => lambda { |str| str.scan(/\w+/) },
        :too_long  => "must have at most {{count}} characters"
    validates_uniqueness_of :email, :on => :create
    has_secure_password

    VALID_PASSWORD_REGEX = /\A{6,40}/x
    validates :password, length: { minimum: 6 }, format: { with: VALID_PASSWORD_REGEX }

    validates_presence_of :password, :password_confirmation
    validates_confirmation_of :password

    def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
    end
    
end
