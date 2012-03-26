class User < ActiveRecord::Base
  validates :first_name, :last_name, :username, :email, :password, :presence => true
  validates :username, :email, :uniqueness => true
end
