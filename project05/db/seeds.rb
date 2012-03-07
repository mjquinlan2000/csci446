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
    Article.create(:title => "Article #{count}-#{j}", :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pulvinar, magna non condimentum accumsan, felis metus varius tortor, at congue nulla lorem ut nibh. In sed tortor ac libero vulputate tincidunt. Duis nec magna ipsum, nec fermentum leo. Sed eleifend ipsum et tellus molestie tincidunt. Nulla pretium nulla eu lorem dictum dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate, libero vitae porttitor fringilla, nisi quam feugiat urna, vitae sagittis mi quam eu orci. In sed leo ac magna sodales cursus. Donec a lorem risus, non pellentesque neque. Vivamus porta lorem eget justo pretium sed imperdiet nisi adipiscing. Nunc aliquet, nulla pellentesque consectetur consectetur, libero tellus vehicula est, eu porta velit quam et massa. Vestibulum vehicula pharetra dolor, at fringilla nibh sollicitudin eget. Duis sed pretium dolor. Sed a dolor velit. Donec rutrum pulvinar augue, sit amet iaculis leo scelerisque in. Maecenas viverra scelerisque tortor quis ultricies.
      
      Donec tempus tincidunt metus, ac imperdiet nibh lobortis consectetur. Vivamus justo enim, imperdiet a cursus sit amet, congue vestibulum tortor. Nulla facilisi. Suspendisse ligula est, mattis ut venenatis id, mollis ut velit. Curabitur a enim felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dolor est, viverra quis molestie ac, varius at metus. Morbi eu neque tellus, et consectetur felis. Morbi arcu enim, feugiat ac lacinia eget, tincidunt quis felis. Sed at varius dui.
      
      Integer egestas lobortis tempor. Proin pretium, tellus vel semper tempus, ligula urna tempor risus, eget tincidunt felis tortor vitae odio. Morbi magna urna, egestas ac cursus vel, vulputate id libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas nisi augue, laoreet sed vehicula vel, rutrum eu turpis. Aliquam vitae nulla libero, in laoreet orci. Donec eget lectus est. Curabitur eget turpis felis, non sagittis enim. Pellentesque vestibulum sem id neque fringilla quis placerat odio porta. Curabitur vel magna velit. In malesuada quam vitae quam bibendum porttitor. Sed vitae dolor sed nisi eleifend aliquet ac pellentesque neque.", 
      :author_id => author.id)
  end
  count += 1
end
