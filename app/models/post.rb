class Post < ActiveRecord::Base
  belongs_to :theme
  validates :content, presence: true
end
