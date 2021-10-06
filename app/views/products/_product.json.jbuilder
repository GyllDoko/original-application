json.extract! product, :id, :name, :price, :image, :category_id_id, :desccription, :shop_id_id, :created_at, :updated_at
json.url product_url(product, format: :json)
