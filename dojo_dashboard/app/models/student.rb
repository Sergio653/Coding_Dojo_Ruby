class Student < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  belongs_to :Dojo
  validates :first_name, :last_name, :Dojo_id, presence: true
  validates :email, presence:true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
