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
Role.find_or_create_by_role("Guest")

(1..10).each do |i|
  user = User.new(:email => "user#{i}@somewhere.com", :first_name => "First", :last_name => "Last", :password => "secret#{i}",
    :password_confirmation => "secret#{i}", :username => "username#{i}")
  user.roles[0] = user_role
  if user.save
    puts "USER CREATED"
  end
end

User.all.each do |user|
  (1..3).each do |j|
    Game.create(:title => "Game#{j*user.id}", :rating => j%5, :user_id => user.id)
  end
end

admin = User.new(:email => "mjquinlan2000@gmail.com", :first_name => "Michael", :last_name => "Quinlan", :username => "admin",
  :password => "password", :password_confirmation => "password")
admin.roles[0] = admin_role
if admin.save
  puts "CREATED ADMIN"
else
  puts admin
end
