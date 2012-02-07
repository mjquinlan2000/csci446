class LineItem < ActiveRecord::Base
  belongs_to :product, :foreign_key => :line_item_product_id
  belongs_to :cart
end
