class Author < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => true, :exclusion => { :in => "Pat", :message => "The name Pat is not allowed" }
end
