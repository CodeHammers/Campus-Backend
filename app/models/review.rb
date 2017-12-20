class Review < ApplicationRecord
    belongs_to :user
    belongs_to :branch, optional: true
    belongs_to :workshop, optional: true

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    #A function to retrive a certain review (full retrieval of data)
    def self.get_review(review_id)
        review = Review.execute_sql("select * from reviews as r where r.id = ?",review_id)
        return review
    end

    #A function to retrieve all reviews made to a workspace branch (only relevant data)
    def self.get_all_branch_reviews(branch_id)
        reviews = Review.execute_sql("select r.id, r.feedback, r.rating, r.created_at, r.user_id from reviews as r where r.branch_id = ?", branch_id).to_a
        return reviews
    end

    #A function to get the rating of a branch
    def self.get_branch_rating(branch_id)
        rating = Review.execute_sql("select avg(rating) from reviews where branch_id = ?", branch_id)
        return rating 
    end

    #A function to retrieve all reviews made to a workshop (only relevant data)
    def self.get_all_workshop_reviews(workshop_id)
        reviews = Review.execute_sql("select r.id, r.feedback, r.rating, r.created_at, r.user_id from reviews as r where r.workshop_id = ?", workshop_id).to_a
        return reviews
    end

    #A function to get the rating of a workshop
    def self.get_workshop_rating(workshop_id)
        rating = Review.execute_sql("select avg(rating) from reviews where workshop_id = ?", workshop_id)
        return rating 
    end

    #A function to retrieve all reviews made to an organization (only relevant data)
    def self.get_all_organization_reviews(organization_id)
        reviews = Review.execute_sql("select r.id, r.feedback, r.rating, r.created_at, r.user_id from reviews as r where r.organization_id = ?", organization_id).to_a
        return reviews
    end

     #A function to get the rating of a organizations
    def self.get_org_rating(organization_id)
        rating = Review.execute_sql("select avg(rating) from reviews as r where r.organization_id = ?", organization_id)
        return rating 
    end

end
