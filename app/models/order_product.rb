class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order
  validates :quantity, presence: true
  attribute :quantity, :integer, default: 0
  
end
