class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :description, presence: true
  has_many :likes
  
end
