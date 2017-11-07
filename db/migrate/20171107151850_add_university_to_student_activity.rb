class AddUniversityToStudentActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :student_activities, :university, :string
  end
end
