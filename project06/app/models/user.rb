class User < ActiveRecord::Base
  has_many :games
  
  validates :username, :first_name, :last_name, :email, :password, :password_confirmation, :presence => true
  validates :username, :email, :uniqueness => true
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :last_name, :first_name
end
