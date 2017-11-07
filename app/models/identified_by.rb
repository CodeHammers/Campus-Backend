class IdentifiedBy < ApplicationRecord
    belongs_to :students_activity
    belongs_to :tag
end
