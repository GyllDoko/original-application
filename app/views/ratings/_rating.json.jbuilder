json.extract! rating, :id, :user_id, :product_id, :note, :created_at, :updated_at
json.url rating_url(rating, format: :json)
