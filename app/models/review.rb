class Review < ApplicationRecord
    belongs_to :user
    belongs_to :branch,optional: true
    belongs_to :workshop,optional: true

    #A function to retrieve all reviews submitted about a certain organization 
    def self.reviews_to_organization (org_id)
        reviews = Review.where(organization_id: org_id)
        return reviews
    end

    #A function to retrieve all reviews submitted about a certain workshop
    def self.reviews_to_workshop (wk_id)
        reviews = Review.where(workshop_id: wk_id)
        return reviews
    end

    #A function to retrieve all reviews submitted about a certain workspace branch
    def self.reviews_to_branch (br_id)
        reviews = Review.where(branch_id: br_id)
        return reviews
    end

    #A function to retrieve all reviews submitted by a certain user (I don't know if we need this, but why not:V)
    def selfreviews_made_by_user (u_id)
        reviews = Review.where(user_id: u_id)
        return reviews
    end


end
