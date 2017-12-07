class Position < ApplicationRecord
    belongs_to :branch,optional: true
    belongs_to :organization ,optional: true
    belongs_to :workspace ,optional: true
    belongs_to :user
end
