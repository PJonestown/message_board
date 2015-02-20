class Post < ActiveRecord::Base
	validates :title, :body, presence: true
	validates :title, :length=>{maximum:140}
	validates :body, :length=>{maximum:5000}
end
