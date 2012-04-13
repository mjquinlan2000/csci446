class Game < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :rating, :presence => true
  validates :rating, :numericality => { :only_integer => true}, :inclusion => { :in => (0..5)}
  
  def self.search(page)
    paginate :per_page => 20, :page => page, :order => :title, :include => :user
  end
end
