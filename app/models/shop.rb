class Shop < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :contact, presence: true
  validates :adress, presence: true
  mount_uploader :logo, ImageUploader

end
