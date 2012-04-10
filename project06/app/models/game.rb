class Game < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :rating, :presence => true
  
  def self.search(page)
    paginate :per_page => 20, :page => page, :order => :title, :include => :user
  end
end
