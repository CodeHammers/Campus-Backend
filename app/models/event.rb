class Event < ApplicationRecord
    has_many  :users , through: :attends
end
