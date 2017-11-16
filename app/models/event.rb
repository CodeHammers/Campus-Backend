class Event < ApplicationRecord
    belongs_to :organization

    has_many :attends
    has_many :user, through: :attends
end
