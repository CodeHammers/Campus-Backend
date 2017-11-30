class Room < ApplicationRecord
    belongs_to :branch 

    validates :price ,:capacity ,precense: true

    #A function to get all rooms that belongs to a certain workspace branch
    def self.branch_rooms(br_id)
        rooms = Room.where(branch_id: br_id) 
        return rooms
    end 

end
