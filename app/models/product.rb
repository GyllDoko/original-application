class Product < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  validates :name, presence: true
  validates :price, presence: true
  mount_uploader :image, ImageUploader
  validates :desccription, presence: true
  has_many :comments

  rails_admin do
    configure :category do
      label 'this product category is : '
    end
    configure :name do
      label "Product Name: "
    end
  end
end
