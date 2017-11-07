class AddLogoToStudentActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :student_activities, :logo, :string
  end
end
