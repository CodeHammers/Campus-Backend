class Event < ApplicationRecord
    belongs_to :organization

    has_many :attends
    has_many :user, through: :attends

    #A function to get all events organized by a certain organization 
    def self.events_organized_by_organization org_id
        events = Event.where(organization_id: :org_id)
        return events
    end
    
    #A function to get all events organized at a certain workspace branch 
    def self.events_hosted_at_branch br_id
        events = Event.where(branch_id: :br_id)
        return events 
    end

end
