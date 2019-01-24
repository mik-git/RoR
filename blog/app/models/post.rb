class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  # has_many :commentators, through: :comments, source: :user
  # validates :title, presence: true
  # validates :user_id, presence: true
  #validates_length_of :body, maximum: 450
end
