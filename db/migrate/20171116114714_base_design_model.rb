class BaseDesignModel < ActiveRecord::Migration[5.1]
  def change

    create_table :organizations do |t|
      #attributes
      t.string :name,           :null => false 
      t.text   :description,    :null => true 
      t.string :university,     :null => false 
      t.string :logo,           :null => true  
      t.string :address,        :null => false 
      t.string :phone,          :null => false 
      t.string :email,          :null => false 
      t.text   :event_schedule, :null => true  
      t.timestamps

      #relations
    end

    create_table :workspaces do |t|
       #attributes
       t.string :name,   :null => false   
       t.string :logo,   :null => true 
       t.text   :about,  :null => true   
       t.timestamps

       #relations
    end

    create_table :branches do |t|
      #attributes
      t.integer :number_of_rooms, :null => false   
      t.text    :services,       :null => true  
      t.string  :address,        :null => false 
      t.string  :phone,          :null => false 
      t.string  :email,          :null => true
      t.string  :photos,         :null => true   
      t.timestamps

      #relations
      t.belongs_to :workspace , foreign_key: true
      
    end

    create_table :rooms do |t|
      #attributes
      t.float   :price,        :null => false 
      t.boolean :availability, :null =>false, :default => true  
      t.integer :capacity,     :null => false 
      t.text    :services,     :null => true  
      t.timestamps

      #relations
      t.belongs_to :branch , foreign_key: true
      
    end

    create_table :workshops do |t|
      #attributes
      t.string  :title,       :null => false 
      t.text    :description, :null => true  
      t.date    :date,        :null => false 
      t.time    :time,        :null => false 
      t.timestamps

      #relations
      t.belongs_to :branch , foreign_key: true
      t.belongs_to :organization , foreign_key: true
      
    end

    create_table :events do |t|
      
      #attributes
      t.string  :title,       :null => false 
      t.text    :description, :null => false  
      t.time    :time,        :null => false 
      t.date    :date,        :null => false 
      t.string  :venue_name,  :null => false 
      t.string  :location,    :null => false 
      t.text    :schedule,    :null => false 
      t.timestamps

      #relations
      t.belongs_to :organization , foreign_key: true
      t.belongs_to :branch,  foreign_key: true 
      
    end

    create_table :reviews do |t|
      
      #attributes
      t.text    :feedback,  :null => false 
      t.float   :rating,    :null => false 
      t.timestamps

      #relations
      t.belongs_to :user , foreign_key: true
      t.belongs_to :branch , foreign_key: true
      t.belongs_to :workshop , foreign_key: true
      t.belongs_to :organization,  foreign_key: true 
      
    end

    create_table :reservations do |t|
      
      #attributes
      t.time    :start_time,         :null => false 
      t.float   :duration,           :null => false 
      t.boolean :payment_status,     :null => false 
      t.integer :number_of_attendees, :null => true  
      t.timestamps

      #relations
      t.belongs_to :branch , foreign_key: true
      t.belongs_to :user , foreign_key: true
      t.belongs_to :organization , foreign_key: true
      
    end

    create_table :tags do |t|
      
      #attributes
      t.string :title,  :null => false 
      t.timestamps

      #relations

    end

  end
end