class LineItem < ActiveRecord::Base
  belongs_to :product, :foreign_key => :line_item_product_id
  belongs_to :cart
  belongs_to :order
  
  def total_price
    product.price * quantity
  end
end
