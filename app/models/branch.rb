class Branch < ApplicationRecord
    belongs_to :workspace
    has_many :rooms
    has_many :workshops
    has_many :reviews
    has_many :reservations

    has_many :positions
    has_many :users, through: :positions

    validates :numer_of_rooms,:address,:phone,:email, presence: true  
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
