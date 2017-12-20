class Subscribe < ApplicationRecord
    belongs_to :user
    belongs_to :organization 

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
   		connection.execute(send(:sanitize_sql_array, sql_array))
  	end

  	#A function to get sub by sub_id
  	def self.get_subscription(sub_id)
  		subscription = Subscribe.execute_sql("select * froms subscribes as s where s.id = ?", sub_id)
  		return subscription
  	end

  	#A function to get subs of an org
  	def self.get_all_subscriptions_org(org_id)
  		subs = Subscribe.execute_sql("select * froms subscribes as s where s.organization_id = ?", org_id).to_a
  		return subs 
  	end

  	#A function to get subs of a user
  	def self.get_all_subscriptions_user(user_id)
  		subs = Subscribe.execute_sql("select * froms subscribes as s where s.user_id = ?", user_id).to_a
  		return subs 
  	end

  	def self.IsSubscriped(user_id, org_id)
  		subscription = Subscribe.execute_sql("select * froms subscribes as s where s.user_id = ? and s.organization_id = ?", user_id, org_id)
  		return !subscription.nil?
  	end

	#A function to get number of subs to an organization
	def self.get_number_subscription(organization_id)
		subscribe = Subscribe.execute_sql("select count(s.id) from subscribes as s where s.organization_id = ?", organization_id)
		return Subscribe 
	end
end
