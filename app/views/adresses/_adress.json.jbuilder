json.extract! adress, :id, :longitude, :latitude, :user_id, :created_at, :updated_at
json.url adress_url(adress, format: :json)
