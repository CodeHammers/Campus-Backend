class Reservation < ApplicationRecord
    belongs_to :user,optional: true
    belongs_to :organization, optional: true
    belongs_to :branch
end
