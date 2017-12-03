class Workspace < ApplicationRecord
    has_many :branches

    validates :name, presence: true
    validates :name, uniqueness: true

    def self.workspace_by_name(workspace_name)
    	workspace = Workspace.where(name: workspace_name)
    	return workspace
    end
end
