class FixLineItemsColumnName < ActiveRecord::Migration
  def up
	rename_column :line_items, :product_id, :line_item_product_id
  end

  def down
	rename_column :line_items, :line_items_product_id, :product_id
  end
end
