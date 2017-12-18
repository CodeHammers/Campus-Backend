class Reservation < ApplicationRecord
    belongs_to :user,optional: true
    belongs_to :organization, optional: true
    belongs_to :branch

    validates :start_time , :duration, :payment_status ,presence: true

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    #A function to get a certain reseveration 
    def self.get_reservation(reservation_id)
        reservation = Reservation.execute_sql("select * from reservations as r where r.id = ?",reservation_id)
        return reservation
    end

    #A function to get all reservations at a workspace branch
    def self.reservations_at_branch(branch_id)
        reservations = Reservation.execute_sql("select * from reservations as r where r.branch_id = ?", branch_id).to_a
        return reservations 
    end
    
    #A function to get all reservations made by a user
    def self.reservations_by_user(user_id)
        reservations = Reservation.execute_sql("select *, w.name from reservations as r, workspace as w, branch as b 
        where r.user_id = ? and b.id = r.branch_id and b.workspace_id = w.id", user_id).to_a
        return reservations 
    end

    #A function to get all reservations made by a user at a certain branch 
    def self.reservations_by_user_at_branch(user_id, branch_id)
        reservations = Reservation.execute_sql("select *, w.name from reservations as r, workspace as w, branch as b 
        where r.user_id = ? and r.branch_id = ? and b.id = r.branch_id and b.workspace_id = w.id",user_id, branch_id).to_a
        return reservations
    end

    #A function to get all reservations made by an organization 
    def self.reservations_by_organizations(org_id)
        reservations = Reservation.execute_sql("select *, w.name from reservations as r, workspace as w, branch as b 
        where r.organization_id = ? and b.id = r.branch_id and b.workspace_id = w.id",org_id).to_a
        return reservations
    end

    #A function to get all reservations made by an organization at a certain branch
    def self.reservations_by_organizations_at_branch(org_id, branch_id)
        reservations = Reservation.execute_sql("select *, w.name from reservations as r, workspace as w, branch as b 
        where r.organization_id = ? and branch_id = ? and b.id = r.branch_id and b.workspace_id = w.id", org_id, branch_id).to_a
        return reservations
    end
end
