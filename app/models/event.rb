class Event < ApplicationRecord
    belongs_to :students_activity
    has_many  :users , through: :attends
end
