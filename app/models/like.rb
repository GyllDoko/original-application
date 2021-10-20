class Like < ApplicationRecord
  belongs_to :user
  belongs_to :product, optional: true
  validates :value, presence: true
  attribute :value, :integer, default: 0
  belongs_to :comment
end
