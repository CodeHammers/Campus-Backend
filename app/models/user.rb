class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          #,:confirmable, :omniauthable
          #omniauthable is for Gmail third party auth 
          #we may use it later on
          #confirmable is for sending confirmation email to users to complete 
          #registration 
  include DeviseTokenAuth::Concerns::User
  

  has_many :reviews 
  has_many :reservations


  has_many :attends
  has_many :events, through: :attends

  has_many :subscribes
  has_many :organizations, through: :subscribes


  has_many :positions
  has_many :organizations, through: :positions

  
end
