class BaseDesignModel < ActiveRecord::Migration[5.1]
  def change

    create_table :organizations do |t|
      #attributes
      t.timestamps
      #relations
    end

    create_table :workspaces do |t|
       #attributes
       t.timestamps
       #relations
    end

    create_table :branches do |t|
      #attributes
      t.timestamps
      #relations
      t.belongs_to :workspace ,index: { unique: true }, foreign_key: true
      
    end

    create_table :rooms do |t|
      #attributes
      t.timestamps
      #relations
      t.belongs_to :branch ,index: { unique: true }, foreign_key: true
      
    end

    create_table :workshops do |t|
      #attributes
      t.timestamps
      #relations
      t.belongs_to :branch ,index: { unique: true }, foreign_key: true
      t.belongs_to :organization ,index: { unique: true }, foreign_key: true
      
      
    end

    create_table :events do |t|
      
      #attributes
      t.timestamps
      #relations
      t.belongs_to :organization ,index: { unique: true }, foreign_key: true
      
    end

    create_table :reviews do |t|
      
      #attributes
      t.timestamps
      #relations
      t.belongs_to :user ,index: { unique: true }, foreign_key: true
      t.belongs_to :branch ,index: { unique: true }, foreign_key: true
      t.belongs_to :workshop ,index: { unique: true }, foreign_key: true
      
      
    end

    create_table :reservations do |t|
      
      #attributes
      t.timestamps
      #relations
      t.belongs_to :branch ,index: { unique: true }, foreign_key: true
      t.belongs_to :user ,index: { unique: true }, foreign_key: true
      t.belongs_to :organization ,index: { unique: true }, foreign_key: true
      
    end

    create_table :tags do |t|
      
      #attributes
      t.timestamps
      #relations

    end

  end
end
