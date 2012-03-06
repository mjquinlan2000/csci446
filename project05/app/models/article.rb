class Article < ActiveRecord::Base
  belongs_to :author
  
  validates :author, :title, :content, :num_updates, :presence => true
  validates :num_updates, :numericality => {:greater_than_or_equal_to => 0 }
  validates :author, :exclusion => { :in => "Pat", :message => "The name Pat is not allowed"} 
  
  def self.search(page)
    paginate :per_page => 10, :page => page, :order => :title
  end
end
