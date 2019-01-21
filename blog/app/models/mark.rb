class Mark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user, presence: true
  validates :post, presence: true
  validates :value, presence: true
  # :value, numericality: { only_integer: true }
end
