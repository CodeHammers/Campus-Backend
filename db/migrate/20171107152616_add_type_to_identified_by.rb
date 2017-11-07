class AddTypeToIdentifiedBy < ActiveRecord::Migration[5.1]
  def change
    add_column :identified_bies, :type, :string
  end
end
