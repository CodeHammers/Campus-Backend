class Subscribe < ApplicationRecord
    belongs_to :user
    belongs_to :organization

     def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end 

    def self.get_favos(user_id)
    	ss = Subscribe.execute_sql("select o.name ,o.university from organizations as o, subscribes as s where s.organization_id = o.id and s.user_id = ?",user_id)
    	return ss
    end   
end
