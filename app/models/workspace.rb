class Workspace < ApplicationRecord
    has_many :branches

    validates :name, presence: true
    validates :name, uniqueness: true

    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    def self.workspace_by_name(workspace_name)
    	workspace = Workspace.where(name: workspace_name)
    	return workspace
    end

    def self.workspace_branches(workspace_name)
    	workspace = Workspace.where(name: workspace_name)
    	branches = workspace.Branches;
    end 

    def self.workspace_by_part_of_name(prefix)
        workspaces = Workspace.execute_sql("select w.id, w.name, w.logo, w.about from workspaces as w where w.name like ?", prefix+"%").to_a 
        return workspaces
    end
    
end
