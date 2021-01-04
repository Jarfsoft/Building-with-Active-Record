class Post < ApplicationRecord
  validates :body, length: { maximum: 280 }
  validates :title, :body, :user_id, presence: true
  belongs_to :user
  has_many :comments
end
