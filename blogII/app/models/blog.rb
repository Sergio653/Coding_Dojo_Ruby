class Blog < ApplicationRecord
    validates :name, presence:true, length: {minimum:5}
    validates :desc, presence:true

    has_many :owners
    has_many :posts
    has_many :users, through: :posts, source: :User
    has_many :users, through: :owners, source: :User
    has_many :comments, as: :commentable
end
