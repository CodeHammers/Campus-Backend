class StudentActivity < ApplicationRecord
    has_many :activity_managers
    has_many :reservations        
    has_many :users , through: :activity_managers
    has_many :events
    has_many :workshops
    has_many :tags , through: :identified_by
end
