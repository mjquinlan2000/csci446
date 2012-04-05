class AddUserIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :user_id, :integer, :default => -1, :null => false

  end
end
