class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, presence: true, length: { in: 2..20 }
    validates :age, presence:true, numericality: {only_integer:true}, :inclusion => 10..150
    validates :email_address, presence:true,uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

end
