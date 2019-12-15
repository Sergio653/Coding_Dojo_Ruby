class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, presence:true, length: {minimum:2}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

    has_many :post
    has_many :messages
    has_many :owners
    has_many :blogs, through: :posts, source: :Blog
    has_many :messages, through: :posts
    has_many :blogs, through: :owners, source: :Blog
    has_many :comments, as: :commentable

end
