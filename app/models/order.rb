class Order < ApplicationRecord
  belongs_to :user
  validates :status, presence: true
  attribute :status, :boolean, default: false
  has_many :order_products
end
