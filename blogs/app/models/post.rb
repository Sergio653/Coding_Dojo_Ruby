class Post < ApplicationRecord
  belongs_to :Blog
  validates :title, length: {minimum:7}
  validates :content, presence:true
  has_many :messages
end
