class Event < ApplicationRecord
    belongs_to :organization

    has_many :attends
    has_many :image 
    has_many :user, through: :attends

    validates :title, :description, :date, :location, presence: true

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end

    #A function to get a specific event by its id
    def self.get_event(event_id)
        event = Event.execute_sql("select * from events as e where e.id = ?", event_id)
        return event
    end

    #A function to get all events organized by a certain organization
    def self.get_all_events_organized_by_org(org_id)
        events = Event.execute_sql("select * from events as e where e.organization_id = ?",org_id).to_a
        return events
    end

    #A function to get all events held at a certain workspace branch
    def self.get_all_events_held_at_branch(branch_id)
        events = Event.execute_sql("select * from events as e where e.branch_id = ?",branch_id).to_a
        return events
    end

end
