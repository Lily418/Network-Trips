class Trip < ActiveRecord::Base
    has_many :tickets
    has_many :comments
    has_many :trip_images
    has_many :users, through: :tickets
    validates :page_name, uniqueness: { case_sensitive: false }
end
