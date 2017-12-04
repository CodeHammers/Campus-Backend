class Workspace < ApplicationRecord
    has_many :branches

    validates :name, presence: true
    validates :name, uniqueness: true

    def self.workspace_by_name(workspace_name)
    	workspace = Workspace.where(name: workspace_name)
    	return workspace
    end

    def self.workspace_branches(workspace_name)
    	workspace = Workspace.where(name: workspace_name)
    	branches = workspace.Branches;
    end 

    def self.workspace_by_part_of_name(prefix)
        workspaces = Workspace.where("name LIKE :prefix", prefix: "#{prefix}%").to_a
        return workspaces
    end
    
end
