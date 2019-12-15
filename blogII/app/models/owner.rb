class Owner < ApplicationRecord
  belongs_to :Blog
  belongs_to :User
end
