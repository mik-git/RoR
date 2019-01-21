class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :user_id, presence: true
  validates_length_of :body, maximum: 450
end
