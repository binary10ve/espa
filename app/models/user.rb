class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

scope :search, ->(query) { where("first_name like ? OR last_name like? OR email like ?", "%#{query}%","%#{query}%","%#{query}%") }

has_and_belongs_to_many :roles
  def full_name
  	first_name.to_s + " " + last_name.to_s
  end


  
end
