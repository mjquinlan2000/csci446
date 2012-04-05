class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :games
  
  validates :first_name, :username, :last_name, :email, :presence => true
  validates :username, :email, :uniqueness => true
end
