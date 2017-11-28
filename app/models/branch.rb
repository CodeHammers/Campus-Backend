class Branch < ApplicationRecord
    belongs_to :workspace, required: true
    has_many :rooms
    has_many :workshops
    has_many :reviews
    has_many :reservations

    has_many :positions
    has_many :users, through: :positions

    validates :address , presence: true
    
end
