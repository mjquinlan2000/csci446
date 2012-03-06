class AddNumUpdatesToArticles < ActiveRecord::Migration
  def change
	add_column :articles, :num_updates, :integer, :default => 0
  end
end
