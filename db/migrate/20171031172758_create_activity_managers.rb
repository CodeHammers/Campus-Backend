class CreateActivityManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_managers do |t|
      t.string :role
      t.belongs_to :student_activity
      t.belongs_to :user

      t.timestamps
    end
  end
end
