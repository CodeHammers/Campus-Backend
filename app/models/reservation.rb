class Reservation < ApplicationRecord
    belongs_to :user,optional: true
    belongs_to :organization, optional: true
    belongs_to :branch

    #A function to retrieve all reservations made by a certain organziation 
    def self.reservations_by_organization (org_id)
        reservations = Reservation.where(organization_id: :org_id)
        return reservations
    end 

    #A function to retrieve all reservations made by a certain user (if applicable)
    def self.reservations_by_user (u_id)
        reservations = Reservation.where(user_id: :u_id)
        return reservations
    end 

    #A function to retrieve all reservations made to a certain branch 
    def self.get_reservations_by_branch (b_id)
        reservations = Reservation.where(branch_id: :b_id)
        return reservations
    end

end
