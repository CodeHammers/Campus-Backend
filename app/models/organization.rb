class Organization < ApplicationRecord

    has_many :workshops , dependent: :destroy
    has_many :reservations , dependent: :destroy
    has_many :events, dependent: :destroy
    has_many :images, dependent: :destroy


    has_many :reviews  ,dependent: :destroy

    has_many :subscribes, dependent: :destroy
    has_many :users, through: :subscribes

    has_many :positions , dependent: :destroy
    has_many :users, through: :positions

    validates :name , presence: true
    validates :name , uniqueness: true
    validates :university ,:phone , presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email , uniqueness: true
    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    #A function to retrieve an organization using its id (full retrieval of data)
    def self.get_organization(org_id)
        org = Organization.execute_sql("select * from organizations as o where o.id = ?",org_id)
        return org
    end

    #A function to get all organizations (retrieval of only relevant data)  
    def self.get_all_organizations()
        orgs = Organization.execute_sql("select o.id, o.name, o.university, o.logo from organizations as o").to_a 
        return orgs
    end

    #A function that's used by the organizations search bar, it retrieves all organizations with name prefixed with a user typed info
    #It also restricts data to only relevant ones
    def self.organization_by_part_of_name(prefix)
        orgs = Organization.execute_sql("select o.id, o.name, o.university, o.logo from organizations as o where lower(o.name) like ?", prefix.downcase+"%").to_a 
        return orgs 
    end

end