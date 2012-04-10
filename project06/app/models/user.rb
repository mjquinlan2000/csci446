class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :games
  has_many :roles, :through => :assignments
  
  validates :first_name, :username, :last_name, :email, :presence => true
  validates :username, :email, :uniqueness => true
  validates :username, :length => {:within => 6..15 }
end
