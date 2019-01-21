class User < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 22
  validates :name, uniqueness: true
end
