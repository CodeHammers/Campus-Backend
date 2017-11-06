class Branch < ApplicationRecord
    has_many :branch_managers
    has_many :reservations    
    has_many  :users , through: :branch_managers
end
