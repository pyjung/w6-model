class Post < ActiveRecord::Base
    
    has_many :comments
    validates :title, presence: {message: "There is no title" }
end
