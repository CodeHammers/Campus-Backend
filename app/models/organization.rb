class Organization < ApplicationRecord
    has_many :workshops 
    has_many :reservations
    has_many :events

    has_many :subscribes
    has_many :users, through: :subscribes

    has_many :positions
    has_many :users, through: :positions

    validates :name , presence: true
    validates :name , uniqueness: true
    validates :university ,:address ,:phone , presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    def self.organization_by_name(org_name)
        org = Organization.where(name: org_name)
        return org 
    end 

    def self.organization_by_part_of_name(prefix)
        orgs = Organization.execute_sql("select o.id, o.name, o.university, o.logo from organizations as o where o.name like ?", prefix+"%").to_a 
        return orgs 
    end

end