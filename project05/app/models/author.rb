class Author < ActiveRecord::Base
  has_many :articles, :dependent => :delete_all
  
  has_attached_file :photo, :styles => {:small => '300x300'}
  
  validates :name, :presence => true, :uniqueness => true, :exclusion => { :in => "Pat", :message => "The name Pat is not allowed" }
  
  def self.search(page)
    paginate :per_page => 10, :page => page, :order => :name
  end
end
