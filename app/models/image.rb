class Image < ApplicationRecord
	belongs_to :organization, optional: true 
	belongs_to :event, optional: true 
	belongs_to :workshop, optional: true
	belongs_to :room, optional: true 

	#A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
   		connection.execute(send(:sanitize_sql_array, sql_array))
  	end

  	#A function get a specific image using its id
  	def self.get_image(image_id)
  		image = Image.find(image_id)
  		return image
  	end

	#A function to get all images of a certain room 
	def self.get_all_room_images(room_id)
		images = Image.execute_sql("select p.id, p.image_url, p.description from images as p where p.room_id = ?", room_id).to_a 
		return images
	end

	#A function to get all images of a certain event 
	def self.get_all_event_images(event_id)
		images = Image.execute_sql("select p.id, p.image_url, p.description from images as p where p.event_id = ?", event_id).to_a 
		return images
	end

	#A function to get all images of a certain organization 
	def self.get_all_organization_images(org_id)
		images = Image.execute_sql("select p.id, p.image_url, p.description from images as p where p.organization_id = ?", org_id).to_a 
		return images
	end 

	#A function to get all images of a certain workshop 
	def self.get_all_workshop_images(workshop_id)
		images = Image.execute_sql("select p.id, p.image_url, p.description from images as p where p.workshop_id = ?", workshop_id).to_a
		return images 
	end 

end
