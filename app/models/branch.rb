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
    validates :email , uniqueness: true
    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
   		connection.execute(send(:sanitize_sql_array, sql_array))
  	end

    #A function to retrieve a branch using its id (full retrieval of data)
    def self.get_branch(branch_id, workspace_id)
        branch = Branch.execute_sql("select * from branches as b where b.id = ? and b.workspace_id = ?", branch_id, workspace_id)
        return branch
    end

    #A function to retrieve all branches (retrieval of only relevant data)
    def self.get_all_branches(workspace_id)
        branches = Branch.execute_sql("select b.id, b.address, b.phone from branches as b where b.workspace_id = ?",workspace_id)
        return branches 
    end

    #A function that gets all the braches of a workspace using its id (retrieval of only relevant data)
    def self.get_branches_by_workspace_name(workspace_id)
        branches = Branch.execute_sql("select b.id, b.address, b.phone from branches as b, workspaces as w 
            where b.workspace_id = w.id and w.id = ?", workspace_id).to_a 
    	return branches 
    end

end
