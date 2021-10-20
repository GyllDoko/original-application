class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :note, presence: true

end
