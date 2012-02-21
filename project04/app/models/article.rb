class Article < ActiveRecord::Base
  validates :author, :title, :content, :presence => true
  
  def sub_breaks
    content.gsub("\n", "<br />")
  end
end
