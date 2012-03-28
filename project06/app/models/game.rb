class Game < ActiveRecord::Base
    validates :title, :rating, :presence => true
    
    def self.get_page(page)
      paginate :page => page, :per_page => 20, :order => :title
    end
end
