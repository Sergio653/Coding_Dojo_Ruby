class Message < ApplicationRecord
  belongs_to :Post
  validates :author, presence:true
  validates :message, presence:true, length: {minimum:15}
end
