class Workshop < ApplicationRecord
    belongs_to :branch , optional: true
    belongs_to :organization, optional: true
    has_many :reveiws
    has_many :image 

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    #A function to get a specific workshop indetified by its id
    def self.get_workshop(workshop_id)
        workshop = Workshop.execute_sql("select * from workshops as w where w.id = ?", workshop_id).to_a 
        return workshop
    end

    #A function to get all workshops organized by a certain organization 
    def self.workshops_made_by_organziation (org_id)
        workshops = Workshop.execute_sql("select w.id, w.title, w.description, w.date from workshops as w 
            where w.organization_id = ?",org_id).to_a
        return workshops
    end

    #A function to get all workshops held at a certain workspace branch
    def self.workshops_host_at_Branch (br_id)
        workshops = Workshop.execute_sql("select w.id, w.title, w.description, w.date from workshops as w 
            where w.branch_id = ?",br_id).to_a
        return workshops 
    end

    #A function to get all workshops held at a sepecific branch and organized by a certain organization
    def self.workshops_by_branch_and_organization(br_id, org_id)
        workshops = Workshop.execute_sql("select w.id, w.title, w.description, w.date from workshops as w 
            where w.organization_id = ? and w.branch_id = ?", org_id, br_id).to_a
        return workshops
    end

end
