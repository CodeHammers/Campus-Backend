class Workshop < ApplicationRecord
    belongs_to :branch , optional: true
    belongs_to :organization, optional: true
    has_many :reveiws
    has_many :image 

    #A function to get all workshops organized by a certain organization 
    def self.workshops_by_organziation (org_id)
        organization_workshops = Workshop.where(organization_id: org_id)
        return organization_workshops
    end

    #A function to get all workshops held at a certain workspace branch
    def self.workshops_at_Branch (br_id)
        branch_workshops = Workshop.where(branch_id: br_id)
        return branch_workshops
    end

end
