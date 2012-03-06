class Article < ActiveRecord::Base
  belongs_to :author
  
  validates :author_id, :title, :content, :num_updates, :presence => true
  validates :num_updates, :numericality => {:greater_than_or_equal_to => 0 }
  
  def self.search(page)
    paginate :per_page => 10, :page => page, :order => :title
  end
end
