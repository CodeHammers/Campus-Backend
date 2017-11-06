class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :user      
      t.belongs_to :student_activity      
      t.belongs_to :branch      
      
      t.timestamps
    end
  end
end
