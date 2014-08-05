class User < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
    before_save { self.email = email.downcase }
    has_secure_password
    validates :password, length: { minimum: 6 }
    has_many :tickets
    has_many :trips, through: :tickets

    def profile_picture
        "https://gravatar.com/avatar/" + Digest::MD5.hexdigest(self.email.strip.downcase)
    end
end
