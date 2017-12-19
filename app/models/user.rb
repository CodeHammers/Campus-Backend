class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          #,:confirmable, :omniauthable
          #omniauthable is for Gmail third party auth 
          #we may use it later on
          #confirmable is for sending confirmation email to users to complete 
          #registration 
  include DeviseTokenAuth::Concerns::User
  

  has_many :reviews 
  has_many :reservations


  has_many :attends
  has_many :events, through: :attends

  has_many :subscribes
  has_many :organizations, through: :subscribes


  has_many :positions
  has_many :organizations, through: :positions

  
   def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end 

    #A function to get a certain position by its id
    def self.get_user_in_org(organization_id)
        position = Position.execute_sql("select u.email ,u.name,u.id from users as u ,positions as p where p.organization_id=? and p.user_id = u.id",organization_id)
        return position
    end   

end
