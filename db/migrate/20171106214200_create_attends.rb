class CreateAttends < ActiveRecord::Migration[5.1]
  def change
    create_table :attends do |t|
      t.string :status
      t.belongs_to :user
      t.belongs_to :event      
      t.timestamps
    end
  end
end
