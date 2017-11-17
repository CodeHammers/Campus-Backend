class BaseDesignRelation < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      #attributes
      t.timestamps
      t.time  :start_time ,:null => false  
      t.float :salary    ,:null => true 
    

      #relations
      t.belongs_to :branch , foreign_key: true
      t.belongs_to :user , foreign_key: true
      t.belongs_to :organization , foreign_key: true      
    end
    

    create_table :attends do |t|
      #attributes
      t.timestamps

      #relations
      
      t.belongs_to :event , foreign_key: true
      t.belongs_to :user , foreign_key: true
      
    end

    create_table :subscribes do |t|
      #attributes
      t.timestamps

       #relations
      t.belongs_to :user , foreign_key: true
      t.belongs_to :organization , foreign_key: true
       
    end

    create_table :identified_by do |t|
      #attributes
      t.string :title  #,:null => false

      #relations
      t.belongs_to :organization,  foreign_key: true
      t.belongs_to :workshop,  foreign_key: true
      t.belongs_to :event,  foreign_key: true 

    end

    #TODO: create table for the instructs/speaks relationship
  end
end
