class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :student_activity
    belongs_to :branch
    
end
