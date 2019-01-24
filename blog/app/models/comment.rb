class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user, counter_cache: true
  # belongs_to :post
  # validates :body, presence: true
  # #validates_length_of :body, maximum: 450
  # validates :user, presence: true
  # validates :post, presence: true
end
