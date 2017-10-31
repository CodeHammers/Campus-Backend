class StudentActivity < ApplicationRecord
    has_many :activity_managers
    has_many  :users , through: :activity_managers
end
