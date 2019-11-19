class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 15 }
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, presence: true, uniqueness: true, length: { minimum: 6, maximum: 8 }
end
