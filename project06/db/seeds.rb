# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.delete_all
User.delete_all

for i in (1..100)
  Game.create(:title => "Game #{i}", :rating => i%5)
end


for i in (1..10)
  User.create(:first_name => "test", :last_name => "person", :username => "user#{i}", :email => "email#{i}@somewhere.com", :password => "password")
end

User.create(:username => "admin", :first_name => "Mike", :last_name => "Quinlan", :password => "password", :email => "loves2splooge@aol.com", :admin => true)
User.create(:username => "user", :first_name => "Ron", :last_name => "Burgundy", :password => "password", :email => "anchorman@channel4news.com")
