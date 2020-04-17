class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 500 }
  belongs_to :user, :post
end