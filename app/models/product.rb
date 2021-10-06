class Product < ApplicationRecord
  belongs_to :category
  belongs_to :shop

  rails_admin do
    configure :category do
      label 'this product category is : '
    end
    configure :name do
      label "Product Name: "
    end
  end
end
