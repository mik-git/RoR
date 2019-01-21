class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
  validates_length_of :body, maximum: 450
  validates :user, presence: true
  validates :post, presence: true
end
