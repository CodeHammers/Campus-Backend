class Branch < ApplicationRecord

    belongs_to :workspace
    has_many :rooms, dependent: :destroy
    has_many :workshops, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :reservations, dependent: :destroy

    has_many :positions, dependent: :destroy
    has_many :users, through: :positions

    has_many :events, dependent: :destroy

    validates :number_of_rooms,:address,:phone,:email, presence: true  
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email , uniqueness: true 
    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
   		connection.execute(send(:sanitize_sql_array, sql_array))
  	end



    def self.get_avg_rating b_id
         c = Organization.execute_sql("select AVG(r.rating) from  reviews as r  where  r.branch_id = ? ",o_id)
        return c
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
