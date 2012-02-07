class Product < ActiveRecord::Base
  default_scope :order => 'title'
  has_many :line_items, :foreign_key => :line_item_product_id
  before_destroy :ensure_not_referenced_by_any_line_items
  
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0.01 }
  validates :title, :uniqueness => true
  validates :image_url, :format => {
      :with => %r{\.(gif|jpg|png)$}i,
      :message => 'Must be a URL for GIF, JPG, or PNG images'
   }
  
  private
  
  def ensure_not_referenced_by_any_line_items
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items Present')
      return false
    end
  end
end
