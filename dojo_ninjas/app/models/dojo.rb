class Dojo < ApplicationRecord
    validates :name, :city, presence:true
    validates :state, presence:true, length: (2..20)
    has_many :ninjas,dependent: :destroy
end
