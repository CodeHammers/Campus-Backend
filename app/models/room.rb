class Room < ApplicationRecord

    belongs_to :branch 

    validates :price ,:capacity ,presence: true 

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
   		connection.execute(send(:sanitize_sql_array, sql_array))
  	end

  	#A function to retrieve a room of a particular branch using its id (full retrieval of data)
  	def self.get_room(room_id, branch_id)
  		room = Room.execute_sql("select * from rooms as r where r.branch_id = ? and r.id = ?", branch_id, room_id)
  		return room
  	end

  	#A function to retrieve all rooms of a particular branch (retrieval of only relevant data)
  	def self.get_all_rooms(branch_id)
  		rooms = Room.execute_sql("select r.id, r.price, r.availability, r.capacity from rooms as r where r.branch_id = ?",branch_id)
  		return rooms 
  	end
end
