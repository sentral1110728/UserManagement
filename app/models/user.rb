class User < ApplicationRecord
  validates :name, 
    presence: true, 
    uniqueness: true, 
    length: { maximum: 15 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, 
    presence: true, 
    uniqueness: true, 
    format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, 
    presence: true, 
    uniqueness: true, 
    length: { minimum: 6, maximum: 8 }
end
