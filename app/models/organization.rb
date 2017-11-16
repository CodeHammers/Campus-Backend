class Organization < ApplicationRecord
    has_many :workshops 
    has_many :reservations
    has_many :events

    has_many :subscribes
    has_many :users, through: :subscribes

    has_many :positions
    has_many :users, through: :positions

end
