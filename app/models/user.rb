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

  has_many :branch_managers
  has_many  :branches , through: :branch_managers
  has_many :activity_managers
  has_many  :student_activities , through: :activity_managers

end
