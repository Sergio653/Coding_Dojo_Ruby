class Post < ApplicationRecord
  belongs_to :User
  belongs_to :Blog

  validates :title, presence:true, length: {minimum:5}
  validates :content, presence:true

  has_many :messages
  has_many :comments, as: :commentable
end
