class Workspace < ApplicationRecord
    has_many :branches

    validates :name, presence: true
    validates :name, uniqueness: true

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    #A function to retrieve a workspace using its id (full retrieval of data)
    def self.get_workspace(workspace_id)
        workspace = Workspace.find(workspace_id)
        return workspace
    end

    #A function to retrieve all workspaces (retrieval of only relevant data)
    def self.get_all_workspaces()
        workspaces = Workspace.execute_sql("select w.id, w.name, w.logo from workspaces as w").to_a 
        return workspaces
    end

    #A function to retrieve all workspaces with names that's prefixed with a user input (retrieval of only relevant data)
    def self.workspace_by_part_of_name(prefix)
        workspaces = Workspace.execute_sql("select w.id, w.name, w.logo from workspaces as w where lower(w.name) like ?", prefix.downcase+"%").to_a 
        return workspaces
    end
  
end