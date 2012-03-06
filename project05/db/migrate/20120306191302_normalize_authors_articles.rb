class NormalizeAuthorsArticles < ActiveRecord::Migration
  def up
    Article.select(:author).group(:author).each do |article|
      Author.create(:name => article.author)
    end
    
    Author.all.each do |author|
      Article.update_all("author_id = #{author.id}", "author = '#{author.name}'")
    end
    
    remove_column :articles, :author
  end

  def down
    add_colum :articles, :author, :string
    
    Author.all.each do |author|
      Article.update_all("author = '#{author.name}'", "author_id = #{author.id}")
      Article.update_all("author_id = null")
    end
    
    Author.delete_all
  end
end
