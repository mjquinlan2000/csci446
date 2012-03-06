class Author < ActiveRecord::Base
  has_many :articles, :dependent => :delete_all
  
  validates :name, :presence => true, :uniqueness => true, :exclusion => { :in => "Pat", :message => "The name Pat is not allowed" }
end
