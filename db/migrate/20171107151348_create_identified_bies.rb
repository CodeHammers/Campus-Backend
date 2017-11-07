class CreateIdentifiedBies < ActiveRecord::Migration[5.1]
  def change
    create_table :identified_bies do |t|

      t.timestamps
    end
  end
end
