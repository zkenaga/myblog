class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy #when you delete post it also deletes comment
	validates :title, presence:true, length: { minimum: 5 }
	validates :body, presence:true
end
