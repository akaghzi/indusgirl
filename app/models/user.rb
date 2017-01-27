class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :firstname, :lastname, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable #and :omniauthable
  validates :phone, :city, presence: true
  before_save {|user|user.firstname=user.firstname.downcase}
  before_save {|user|user.lastname=user.lastname.downcase}
  before_save {|user|user.city=user.city.downcase}
  
end
