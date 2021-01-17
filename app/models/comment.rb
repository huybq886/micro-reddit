class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, presence: true, length: { minimum: 10 }
  validates :post, presence: true
  validates :user, presence: true
end
