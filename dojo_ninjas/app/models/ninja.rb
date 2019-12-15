class Ninja < ApplicationRecord
  belongs_to :Dojo
  validates :first_name, :last_name, presence:true
end
