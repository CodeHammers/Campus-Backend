class CreateWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
