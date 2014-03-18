class Theme < ActiveRecord::Base

  validates :title, presence:{message:"Please type title!"}, length:{minimum:3, message:"Title is too short!"}
  validates :content, presence:{message:"Please type content!"}, length:{minimum:5, message:"Content is too short!"}
  has_many :posts

end
