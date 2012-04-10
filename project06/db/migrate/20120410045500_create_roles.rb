class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role, :null => false, :unique => true

      t.timestamps
    end
    
    Role.create(:role => "Admin")
    Role.create(:role => "User")
  end
end
