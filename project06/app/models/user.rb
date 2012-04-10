class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :games
  has_many :assignments
  has_many :roles, :through => :assignments
  
  validates :first_name, :username, :last_name, :email, :presence => true
  validates :username, :email, :uniqueness => true
  validates :username, :length => {:within => 5..15 }
  
  def role_symbols
    roles.map do |role|
      role.role.underscore.to_sym
    end
  end
end
