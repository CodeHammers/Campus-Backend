class Room < ApplicationRecord
    belongs_to :branch

    #A function to get all rooms that belongs to a certain workspace branch
    def branch_rooms(br_id)
        rooms = Room.where(branch_id: :br_id) 
        return rooms
    end 

    public :branch_rooms
    
end
