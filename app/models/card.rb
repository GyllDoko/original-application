class Card < ApplicationRecord
  belongs_to :user
  validates :number, presence: true
  validates :cvv, presence: true
  validates :deadline, presence: true
  validates :owner_first_name, presence: true
  validates :owner_last_name, presence: true
  
  
end
