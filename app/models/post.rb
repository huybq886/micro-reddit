class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :user, presence: true
end