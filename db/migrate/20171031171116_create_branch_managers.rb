class CreateBranchManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :branch_managers do |t|
      t.string :Role
      t.belongs_to :branch
      t.belongs_to :user
      t.timestamps
    end
  end
end
