class Game < ActiveRecord::Base
    validates :title, :rating, :presence => true
end
