class User < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
    uniqueness: true
    before_validation { self.email = email.downcase }
    has_secure_password
    validates :password, length: { minimum: 6 }, on: :create
    has_many :tickets
    has_many :trips, through: :tickets
    has_many :comments

    def profile_picture
        "https://gravatar.com/avatar/" + Digest::MD5.hexdigest(self.email.strip.downcase)
    end

    def User.get_user_from_user_id(id)
        return nil if id == nil
        return User.find_by(id: id)
    end

    def User.has_ticket_to_trip id
        !current_user.nil? && !Ticket.find_by(trip_id: id, user_id: current_user.id).nil?
    end
end
