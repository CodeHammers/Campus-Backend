class BaseDesignRelation < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      #attributes
      t.timestamps
      #relations
      t.belongs_to :branch ,index: { unique: true }, foreign_key: true
      t.belongs_to :user ,index: { unique: true }, foreign_key: true
      t.belongs_to :organization ,index: { unique: true }, foreign_key: true      
    end
    

    create_table :attends do |t|
      #attributes
      t.timestamps
      #relations
      t.belongs_to :event ,index: { unique: true }, foreign_key: true
      t.belongs_to :user ,index: { unique: true }, foreign_key: true
      
    end

    create_table :subscribes do |t|
      #attributes
      t.timestamps
       #relations
      t.belongs_to :user ,index: { unique: true }, foreign_key: true
      t.belongs_to :organization ,index: { unique: true }, foreign_key: true
       
    end

  end
end
