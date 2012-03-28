class User < ActiveRecord::Base
  validates :first_name, :last_name, :username, :email, :password, :presence => true
  validates :username, :email, :uniqueness => true
  validates :email, :format => {:with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/i, :on => :create}
  
  has_attached_file :photo, :styles => {:small => '150x150'}
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/bmp']
end
