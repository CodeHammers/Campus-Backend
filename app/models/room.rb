class Room < ApplicationRecord
    belongs_to :branch

    def GetBranchRooms(id)
        branch_rooms = Room.where(branch_id: id) 
        return branch_rooms
    end 

    public :GetBranchRooms
    
end
