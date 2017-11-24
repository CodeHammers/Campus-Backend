class Workshop < ApplicationRecord
    belongs_to :branch , optional: true
    belongs_to :organization, optional: true
    has_many :reveiws

    def GetWorkshopsByOrganziation (org_id)
        organization_workshops = Workshop.where(organization_id: :org_id)
        return organization_workshops
    end

    def GetWorkshopsByHostingBranch (br_id)
        branch_workshops = Workshop.where(branch_id: :br_id)
        return branch_workshops
    end

    public: GetWorkshopsByOrganziation, GetWorkshopsByHostingBranch  
end
