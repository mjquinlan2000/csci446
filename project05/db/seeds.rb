# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Author.delete_all

(1..100).each do |i|
  Author.create(:name => "Author #{i}")
end

count = 0

Author.all.each do |author|
  (1..3).each do |j|
    Article.create(:title => "Article #{count}-#{j}", :content => "Some content", :author_id => author.id)
  end
  count += 1
end
