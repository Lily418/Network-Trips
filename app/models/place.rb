class Place < ActiveRecord::Base
    has_many :images
    has_many :users
    has_many :liketogos
    has_many :users, through: :liketogos
end
