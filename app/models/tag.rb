class Tag < ApplicationRecord
    has_many :student_activities , through: :identified_by
end
