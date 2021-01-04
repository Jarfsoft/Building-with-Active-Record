class Comment < ApplicationRecord
  validates :content, length: { maximum: 280 }
  validates :content, :user_id, :post_id, presence: true
  belongs_to :post
  belongs_to :user
end
