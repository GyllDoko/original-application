class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :product, optional: true
  validates :note, presence: true

end
