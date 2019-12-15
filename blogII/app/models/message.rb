class Message < ApplicationRecord
  belongs_to :User
  belongs_to :Post

  validates :author, presence:true, length: {minimum:2}
  validates :message, presence:true
  
  has_many :comments, as: :commentable
end
