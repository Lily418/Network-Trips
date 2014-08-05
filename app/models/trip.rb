class Trip < ActiveRecord::Base
    has_many :tickets
    has_many :comments
    has_many :users, through: :tickets
end
