class Position < ApplicationRecord
    belongs_to :branch,optional: true
    belongs_to :organization ,optional: true
    belongs_to :workspace ,optional: true
    belongs_to :user

    validates :title, presence: true

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end 

    #A function to get a certain position by its id
    def self.get_position(position_id)
        position = Position.execute_sql("select * from positions as p where p.id = ?",position_id)
        return position
    end   

    #A function to get the workspaces names that user has position in it
    def self.get_positons_workspace(user_id)
        Position.execute_sql("select p.salary, p.title, p.created_at ,w.name from positions as p ,workspaces as w where p.workspace_id = w.id and p.user_id=?",user_id ).to_a
    end
    
    #A function to get the workspaces names that user has position in it
    def self.get_positons_organization(user_id)
        Position.execute_sql("select p.salary, p.title, p.created_at ,o.name from positions as p ,organizations as o where p.organization_id = o.id and p.user_id=?",user_id ).to_a
    end
    
    #A function to get the workspaces names that user has position in it
    def self.get_positons_branch(user_id)
        Position.execute_sql("select p.salary, p.title, p.created_at ,b.name from positions as p ,branches as b where p.branch_id = b.id and p.user_id=?",user_id ).to_a
    end
end
