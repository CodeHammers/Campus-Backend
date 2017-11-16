class Workshop < ApplicationRecord
    belongs_to :branch , optional: true
    belongs_to :organization, optional: true
    has_many :reveiws
end
