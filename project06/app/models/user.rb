class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :games
  has_many :assignments
  has_many :roles, :through => :assignments
  has_attached_file :photo, :styles => {:small => '150x150'}
  
  validates :first_name, :username, :last_name, :email, :presence => true
  validates :username, :email, :uniqueness => true
  validates :username, :length => {:within => 5..15 }
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  def role_symbols
    roles.map do |role|
      role.role.underscore.to_sym
    end
  end
end
