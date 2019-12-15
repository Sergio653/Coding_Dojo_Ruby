class Blog < ApplicationRecord
    validates :name,:desc, presence:true
    has_many :posts
end
