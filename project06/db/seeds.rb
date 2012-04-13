# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Game.destroy_all
Role.destroy_all

user_role = Role.find_or_create_by_role("Regular")
admin_role = Role.find_or_create_by_role("Admin")

(1..10).each do |i|
  user = User.new(:email => "user#{i}@somewhere.com", :first_name => "First", :last_name => "Last", :password => "secret#{i}",
    :password_confirmation => "secret#{i}", :username => "username#{i}")
  user.roles[0] = user_role
  user.save
end

admin = User.new(:email => "mjquinlan2000@gmail.com", :first_name => "Michael", :last_name => "Quinlan", :username => "administrator",
  :password => "password", :password_confirmation => "password")
admin.roles[0] = admin_role
admin.save

reg_mem = User.new(:email => "regular@regular.com", :username => "member", :first_name => "Rusty", :last_name => "Shackleford", 
  :password => "password", :password_confirmation => "password")
reg_mem.roles[0] = user_role
reg_mem.save

User.all.each do |user|
  (1..3).each do |j|
    Game.create(:title => "Game#{j*user.id}", :rating => j%5, :user_id => user.id)
  end
end
