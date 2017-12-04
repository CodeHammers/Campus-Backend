class Branch < ApplicationRecord
    belongs_to :workspace
    has_many :rooms
    has_many :workshops
    has_many :reviews
    has_many :reservations

    has_many :positions
    has_many :users, through: :positions

    validates :number_of_rooms,:address,:phone,:email, presence: true  
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    def self.execute_sql(*sql_array)     
   		connection.execute(send(:sanitize_sql_array, sql_array))
  	end

    def self.get_branches_by_workspace_name(workspace_name)
    	branches = Branch.execute_sql("select address,phone,email,services from branches as b, workspaces as w 
     		where b.workspace_id = w.id and w.name = ?", workspace_name).to_a 
    	return branches
    end
end
