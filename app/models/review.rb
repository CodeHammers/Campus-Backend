class Review < ApplicationRecord
    belongs_to :user
    belongs_to :branch,optional: true
    belongs_to :workshop,optional: true
end
