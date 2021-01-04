class User < ApplicationRecord
  validates :username, length: { minimum: 8 }
  validates :username, :email, presence: true, uniqueness: true
  has_many :posts
  has_many :comments
end
