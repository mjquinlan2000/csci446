class Game < ActiveRecord::Base
  belongs_to :user
  validates :title, :rating, :presence => true
end
