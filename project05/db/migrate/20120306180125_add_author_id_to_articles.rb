class AddAuthorIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_id, :integer, :null => false, :default => -1

  end
end
