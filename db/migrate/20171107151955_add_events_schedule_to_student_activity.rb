class AddEventsScheduleToStudentActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :student_activities, :events_schedule, :string
  end
end
