# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Game.destroy_all

(1..10).each do |i|
  User.create(:email => "user#{i}@somewhere.com", :first_name => "First", :last_name => "Last", :password => "secret#{i}",
    :password_confirmation => "secret#{i}", :username => "username#{i}")
end

User.all.each do |user|
  (1..3).each do |j|
    Game.create(:title => "Game#{j*j}", :rating => j%5, :user_id => user.id)
  end
end
