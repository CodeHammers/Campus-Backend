class Position < ApplicationRecord
    belongs_to :branch,optional: true
    belongs_to :organization ,optional: true
    belongs_to :workspace ,optional: true
    belongs_to :user

    validates :start_time,:title, presence: true

    #A function to enable using raw sql queries
    def self.execute_sql(*sql_array)     
        connection.execute(send(:sanitize_sql_array, sql_array))
    end    

    #A function to get the workspaces names that user has position in it
    def self.get_positons_workspace(user_id)
        position = Position.execute_sql("select p.salary, p.title, p.start_time ,w.name from position as p ,workspace as w where p.workspace_id != null and p.user_id=?",user_id ).to_a
        return position
    end
end
