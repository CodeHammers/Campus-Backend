class CreateStudentActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :student_activities do |t|

      t.timestamps
    end
  end
end
