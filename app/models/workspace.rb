class Workspace < ApplicationRecord
    has_many :branches

    validates :name ,:logo, presence: true
    validates :name, uniqueness: true

end
